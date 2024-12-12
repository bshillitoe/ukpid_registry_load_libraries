# ukpid_libraries
# Loading of libraries needed for UKPID registry cleaning and analysis
# Author: Ben Shillitoe
# Email: benjmain.shillitoe@nhs.net
# Version 0.1
# Date 12.12.2024

#' Load and Install Libraries
#'
#' This function installs and loads a predefined set of libraries or user-specified ones.
#'
#' @param packages A character vector of library names to load. Default includes "ggplot2", "dplyr", "tidyr", "readr".
#' @examples
#' ukpid_libraries()
#' ukpid_libraries(c("data.table", "lubridate"))

ukpid_libraries <- function(packages = c("tidyverse", "ggplot2", "readxl", "lubridate",
"scico", "knitr", "dplyr", "data.table", "formattable", "scales", "gridExtra", "openxlsx",
"eeptools", "stringr", "gt", "janitor", "tidyquant", "patchwork", "survival", "survminer",
"ggsurvfit", "plotly")) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      message(paste("Installing", pkg))
      install.packages(pkg, dependencies = TRUE)
      message(paste("Loading", pkg))
      library(pkg, character.only = TRUE)
    } else {
      message(paste(pkg, "is already loaded."))
    }
  }
}

