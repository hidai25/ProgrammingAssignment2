
best <- function(state, outcome) {
## Read outcome data

data <- read.csv("outcome-of-care-measures.csv", colClasses="character")

# change to numeric
data[, 11] <- as.numeric(data[, 11]) # heart attack
data[, 17] <- as.numeric(data[, 17]) # heart failure
data[, 23] <- as.numeric(data[, 23]) # pneumonia


valid_outcomes <- c("heart attack", "heart failure", "pneumonia")

#validate state and outcome
if (!state %in% data$State) {
  stop("invalid state")
}
if(!outcome %in% valid_outcomes) {
  stop("invalid outcome")
}
# hospital names
col_num <- if (outcome == "heart attack") {
  11
} else if (outcome == "heart failure") {
  17
} else {
  23
}
state_subset <- data[data[, 7]==state, ]
outcome_array <- state_subset[, col_num]
min <- min(outcome_arr, na.rm=TRUE)
min_idx <- which(outcome_array == min)
hosp_name <- state_subset[min_idx, 2]
hospital_name_sort <-sort(hospital_name)
hospital_name_sort[1]
}
