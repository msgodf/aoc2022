locals {
  score_matrix2      = [[3, 4, 8], [1, 5, 9], [2, 6, 7]]
  result2            = sum([for round in local.rounds : local.score_matrix2[lookup(local.first_player_map, split(" ", round)[0])][lookup(local.second_player_map, split(" ", round)[1])]])
}

output "answer2" {
  value = local.result2
}

