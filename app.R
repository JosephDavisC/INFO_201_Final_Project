library(shiny)
library(tidyverse)
library(DT)
library(shinythemes)

# Load data -----------------------------------------------------------

job_salaries <- read_delim("Data/job-salaries.csv", delim = ",")

llm_data <- read_delim("Data/large-language-models.csv", delim = ",")

# Clean data ----------------------------------------------------------

job_salaries <- job_salaries %>%
  mutate(work_year = as.numeric(work_year))

llm_data <- llm_data %>%
  rename(Company = Comapany) %>%        # fix the misspelled column name
  mutate(
    yy = substr(`Release Date`, 1, 2),
    year = as.numeric(paste0("20", yy))
  )

job_filtered <- job_salaries %>%
  filter(work_year >= 2020, work_year <= 2025)

llm_filtered <- llm_data %>%
  filter(year >= 2018, year <= 2024)

# Values for controls
all_year_min <- 2018
all_year_max <- 2025

llm_companies <- llm_filtered %>%
  pull(Company) %>%          # use the renamed Company column
  unique() %>%
  sort()

# UI ------------------------------------------------------------------

ui <- fluidPage(
  theme = shinytheme("cosmo"),
  
  titlePanel("LLM Growth and AI Job Trends"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "plot_type",
        "Choose view",
        choices = c(
          "LLM releases per year" = "llm",
          "Average salary per year" = "salary",
          "Job roles per year" = "roles"
        )
      ),
      
      sliderInput(
        "year_range",
        "Year range",
        min = all_year_min,
        max = all_year_max,
        value = c(2020, 2024),
        step = 1,
        sep = ""
      ),
      
      checkboxGroupInput(
        "role_filter",
        "Roles to include (for job roles plot)",
        choices = c("ML", "DS", "AI", "Other"),
        selected = c("ML", "DS", "AI", "Other"),
        inline = TRUE
      ),
      
      selectInput(
        "llm_company",
        "LLM company filter (for LLM plot and table)",
        choices = c("All companies", llm_companies),
        selected = "All companies"
      )
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("main_plot")),
        tabPanel("Data table", DTOutput("data_table"))
      )
    )
  )
)

# Server --------------------------------------------------------------

server <- function(input, output, session) {
  
  # Reactive filtered data for jobs
  jobs_reactive <- reactive({
    job_filtered %>%
      filter(
        work_year >= input$year_range[1],
        work_year <= input$year_range[2]
      )
  })
  
  # Reactive filtered data for LLMs
  llm_reactive <- reactive({
    out <- llm_filtered %>%
      filter(
        year >= input$year_range[1],
        year <= input$year_range[2]
      )
    
    if (input$llm_company != "All companies") {
      out <- out %>% filter(Company == input$llm_company)
    }
    out
  })
  
  # Main plot
  output$main_plot <- renderPlot({
    
    if (input$plot_type == "llm") {
      
      llm_reactive() %>%
        group_by(year) %>%
        summarize(n = n()) %>%
        ggplot(aes(year, n)) +
        geom_col() +
        labs(x = "Year", y = "Number of LLM releases")
      
    } else if (input$plot_type == "salary") {
      
      jobs_reactive() %>%
        group_by(work_year) %>%
        summarize(mean_salary = mean(salary_in_usd, na.rm = TRUE)) %>%
        ggplot(aes(work_year, mean_salary)) +
        geom_line() +
        geom_point() +
        labs(x = "Work year", y = "Average salary in USD")
      
    } else {  # roles
      
      jobs_reactive() %>%
        mutate(role = case_when(
          str_detect(job_title, "Machine Learning") ~ "ML",
          str_detect(job_title, "Data Scientist") ~ "DS",
          str_detect(job_title, "AI") ~ "AI",
          TRUE ~ "Other"
        )) %>%
        filter(role %in% input$role_filter) %>%
        group_by(work_year, role) %>%
        summarize(n = n()) %>%
        ggplot(aes(work_year, n, col = role)) +
        geom_line() +
        geom_point() +
        labs(x = "Work year", y = "Count")
    }
  })
  
  # Data table synced with the controls
  output$data_table <- renderDT({
    
    if (input$plot_type == "llm") {
      
      llm_reactive() %>%
        select(year, Model, Company, Arch, Parameters, Tokens, `Release Date`)
      
    } else {
      
      jobs_reactive() %>%
        select(work_year, job_title, experience_level, employment_type,
               salary_in_usd, employee_residence, company_location, company_size)
    }
  })
}

# Launch app
shinyApp(ui, server)
