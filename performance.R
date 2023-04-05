# import libraries
library(tidymodels)
library(readr)
library(jsonlite)

# modelop.init
begin <- function() {
    # run any steps for when the monitor is loaded on the ModelOp runtime
}

# modelop.metrics
metrics <- function(data) {
    df <- data.frame(data)
    get_metrics <- metric_set(f_meas, accuracy, sensitivity, specificity, precision)
    output <- get_metrics(data = df, truth = as.factor(label_value), estimate = as.factor(score))
    mtr <- list(PerformanceMetrics=output)
    emit(mtr)
}
