best <- function(state, outcome) {
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
        
        possible_outcome_positions <- c(11, 17, 23)
        
        # Make subset of just the info from the state that you want
        subset_state <- read_outcomes[read_outcomes$State == state, ]
        subset_state[, possible_outcome_positions] <- sapply(subset_state[, possible_outcome_positions], as.numeric)
        subset_state <- subset_state[order(subset_state[, 2]), ]
        
        ## Return hospital name in that state with lowest 30-day death
        if (outcome == "heart attack") {
                min <- subset_state[which.min(subset_state[, 11]), "Hospital.Name"]
        }
        else if (outcome == "heart failure") {
                min <- subset_state[which.min(subset_state[, 17]), "Hospital.Name"]
        }
        else if (outcome == "pneumonia") {
                min <- subset_state[which.min(subset_state[, 23]), "Hospital.Name"]
        }
        min
}
