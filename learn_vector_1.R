learn_victor_1 = function()
{
  # Poker winnings from Monday to Friday
  poker_vector<- c(1400, -500, 200, -120, 240)
  
  # Roulette winnings from Monday to Friday
  roulette_vector <- c(-240,-500,1000,-3500,100)
  
  names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
  names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
  
  #poker_vector
  #roulette_vector
  
  total_winning <- poker_vector + roulette_vector
  
  #total_winning
  
  total_poker <- sum(poker_vector)
  total_roulette <- sum(roulette_vector)
  total_week <- total_poker + total_roulette
  
  #total_poker < total_roulette
  
  poker_wednesday <- poker_vector[3]
  poker_midweek <- poker_vector[c(2:4)]
  poker_start <- poker_vector[c(1:5)]
  #mean(poker_start)
  winning_flag <- poker_start > 0
  winning_flag
}
