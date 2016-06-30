
0.upto(10) do |idx|
  Refrigerator.create(
    user_id: (idx / 5) + 1,
    name: "食品#{idx}",
    quantity: (idx / 5) + 1,
    purchase: 1.weeks.ago.advance(days: idx),
    deadline: 1.weeks.from_now.advance(days: idx),
    release: idx%3
  )
end

0.upto(10) do |idx|
  Refrigerator.create(
    user_id: (idx / 5) + 1,
    name: "野菜#{idx}",
    quantity: (idx / 5) + 1,
    purchase: 1.weeks.ago.advance(days: idx),
    deadline: nil,
    release: idx%3
  )
end