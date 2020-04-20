# más cositas para imprimir

formatter = "%s %s %s %s"
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter] # imprime esto "%s %s %s %s", 4 veces

puts formatter % [
"I had this thing.",
"That you could type up right.",
"But it didn't sing.",
"So I said goodnight."
]