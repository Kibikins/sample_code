best <- function(state, outcome) { 
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  states <- data[, 7]
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  if ((state %in% states) == FALSE) {
    stop(print("invalid state"))
  }
  else if ((outcome %in% outcomes) == FALSE) {
    stop(print("invalid outcome"))
  }
  sub_data <- subset(data, State == state)
  vec_sub_data <- as.vector(sub_data)
  if (outcome == "heart attack") {
    c_data <- 11 }
    else if (outcome == "heart failure") {
      c_data <- 17}
    else if (outcome =="pneumonia") {
      c_data <- 23}
    ordered_data <- vec_sub_data[order(as.numeric(vec_sub_data[,c_data]),vec_sub_data[,2], na.last = TRUE),]
       
       ordered_data$Hospital.Name[1]
  }
