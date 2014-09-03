source("best.R")
rankhospital <- function(state, outcome, num = "best") {
        ## Read outcome data
        read_outcomes <- read.csv("./ProgAss3\ 2/outcome-of-care-measures.csv", colClasses = "character")
        
        ## Check that state and outcome are valid
        possible_states <- c("AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "GU", "HI", 
                             "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN",
                             "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", 
                             "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT",
                             "WA", "WI", "WV", "WY")
        possible_outcomes <- c("heart attack", "heart failure", "pneumonia") 
        if (length(which(possible_states==state))==0){
                stop(geterrmessage = "invalid state\n")
        }
        if (length(which(possible_outcomes==outcome))==0){
                stop(geterrmessage = "invalid outcome\n")
        }
        
        ## Return hospital name in that state with the given rank
        subset_state <- read_outcomes[read_outcomes$State == state, ]
        subset_state[, c(11, 17, 23)] <- sapply(subset_state[, c(11, 17, 23)], as.numeric)
        length_subset <- length(subset_state)
        rank_fcn <- function(col_number){
                subset_state[which.max(subset_state[, col_number]), "Hospital.Name"]   
        }
        ordered_col <- function(col_number){
                subset_state[order(subset_state[, col_number]), "Hospital.Name"]
        }
        
        if (is.numeric(num) && num > length_subset){
                rank <- NA
        }
        else if (num == "best"){
                rank <- best(state, outcome)
        }
        else if (num == "worst") {
                if (outcome =="heart attack") {
                        rank <- rank_fcn(11) #tail(ordered_col(11), 1)
                }
                else if (outcome == "heart failure") {
                        rank <- rank_fcn(17) #tail(ordered_col(17), 1)
                }
                else if (outcome == "pneumonia") {
                        rank <- rank_fcn(23) #tail(ordered_col(23), 1)
                }
        }
        else {
                if (outcome =="heart attack") {
                        rank <- ordered_col(11)[[num]]
                }
                else if (outcome == "heart failure") {
                        rank <- ordered_col(17)[[num]]
                }
                else if (outcome == "pneumonia") {
                        rank <- ordered_col(23)[[num]]
                }  
        }
        rank
}