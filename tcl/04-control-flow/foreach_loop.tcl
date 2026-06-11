# Iterate over a list
set fruits {apple banana cherry}
foreach fruit $fruits {
    puts "Fruit: $fruit"
}

# Iterate over two values per step
puts "Pairs:"
foreach {name age} {Alice 30 Bob 25 Carol 41} {
    puts "  $name is $age"
}

# Parallel iteration over two lists
set ids {101 102 103}
set users {root admin guest}
foreach id $ids user $users {
    puts "ID $id -> $user"
}
