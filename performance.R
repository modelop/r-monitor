# import libraries
# library(tidymodels)
# library(readr)

# modelop.init
begin <- function() {
    # run any steps for when the monitor is loaded on the ModelOp runtime
}

# modelop.metrics
metrics <- function(data) {
    df <- data.frame(data)
    emit(nrow(df))
}
