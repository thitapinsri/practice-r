## rock, paper, scissors: you vs computer
# to quit: type in 'exit'
# to check your score: type in 'score'

actions <- c("rock", "paper", "scissors", "exit")
win   <- 0
tie   <- 0
loss  <- 0

while (TRUE) {
  player_input   <- tolower(readline("ROCK? PAPER? SCISSORS?: "))
  if (player_input == "exit") {
    message("\nTOTAL SCORE",
            "\nWIN:", win, " LOSS:", loss, " TIE:", tie,
            "\n\nhave a good day!")
    break
  }
  
  computer_input <- sample(actions[1:3], 1)
  
  if (player_input == computer_input) {
    tie <- tie + 1
    message("\nPLAYER:   ",   player_input,
            "\nCOMPUTER: ", computer_input,
            "\n\nit's a tie!")
  } else if (player_input == "rock" & computer_input == "paper") {
    loss <- loss + 1
    message("\nPLAYER:   ",   player_input,
            "\nCOMPUTER: ", computer_input,
            "\n\nsorry, you lose :(")
  } else if (player_input == "paper" & computer_input == "scissors") {
    loss <- loss + 1
    message("\nPLAYER:   ",   player_input,
            "\nCOMPUTER: ", computer_input,
            "\n\nsorry, you lose :(")
  } else if (player_input == "scissors" & computer_input == "rock") {
    loss <- loss + 1
    message("\nPLAYER:   ",   player_input,
            "\nCOMPUTER: ", computer_input,
            "\n\nsorry, you lose :(")
  } else if (player_input == "score") {
    message("\nTOTAL SCORE",
            "\nWIN:", win, " LOSS:", loss, " TIE:", tie)
  } else {
    win <- win + 1
    message("\nPLAYER:   ",   player_input,
            "\nCOMPUTER: ", computer_input,
            "\n\ncongrats! you won :)")
  }
}

