# Suits: C, D, S, H
# Numbers 1 to 10
# Pictures J, Q, K
# Jokers 2

deck_of_cards = ["Joker", "Joker"]
suits = ["C", "D", "S", "H"]
values = ("1".."10").to_a
values.append("J", "Q", "K")

suits.each do |suit|
    values.each do |value|
        deck_of_cards.append(value + suit)
    end
end

print deck_of_cards.shuffle