locals {
  most_calories = reverse([for elf_calories in sort([for elf_calories in split("  ", replace(file("../input1.txt"), "\n", " ")) : format("%08d", sum([for food_calories in split(" ", elf_calories) : food_calories == "" ? 0 : parseint(food_calories, 10)]))]) : tonumber(elf_calories)])[0]
}

output "answer" {
  value = local.most_calories
}
