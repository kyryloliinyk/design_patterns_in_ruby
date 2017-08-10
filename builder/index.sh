[8] pry(main)> builder = LongboardBuilder.new(
[8] pry(main)*   rider_level: :for_beginner,
[8] pry(main)*   length: 40,
[8] pry(main)*   width: 8.5
[8] pry(main)* )
# => #<LongboardBuilder:0x007ffe880bf1d8 @length=40, @longboard=#<Longboard:0x007ffe880bf098>, @rider_level=:for_beginner, @width=8.5>
[10] pry(main)> builder.wheels = 70
# => 70
[11] pry(main)> builder.trucks = :reverse
# => :reverse
[12] pry(main)> builder.deck = 5.7
# => 5.7
[13] pry(main)> longboard = builder.longboard
=> #<Longboard:0x007ffe880bf098 @deck=#<Deck:0x007ffe87034048>, @trucks=#<Trucks:0x007ffe8781a578>, @wheels=#<Wheels:0x007ffe8800ece8>>
