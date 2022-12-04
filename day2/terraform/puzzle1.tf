locals {
  first_player_map  = { "A" : 0, "B" : 1, "C" : 2 }
  second_player_map = { "X" : 0, "Y" : 1, "Z" : 2 }
  score_matrix      = [[4, 8, 3], [1, 5, 9], [7, 2, 6]]
  temp              = split("\n", file("../input1.txt"))
  rounds            = slice(local.temp, 0, length(local.temp) - 1)
  result            = sum([for round in local.rounds : local.score_matrix[lookup(local.first_player_map, split(" ", round)[0])][lookup(local.second_player_map, split(" ", round)[1])]])
}

output "answer1" {
  value = local.result
}

