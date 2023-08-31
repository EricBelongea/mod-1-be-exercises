suitcase = {
  "socks" => 4,
  "pants" => 2,
  "jackets" => 2,
  "shirts" => 4,
  "shoes" => 2
}

# How can we delete:

# 1. 1 pair of socks (so change the value from 4 to 3)
suitcase["socks"] -= 1
suitcase["socks"] = 3
p suitcase["socks"]

# p suitcase["jackets"] = suitcase["hoodies"]
# p suitcase
# 2. All of our jackets
suitcase.delete("jackets")

p suitcase
