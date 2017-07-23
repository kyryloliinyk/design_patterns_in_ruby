> game_results = GameResults.new
=> #<GameResults:0x007fbf3f8c2fe8 @fouls=0, @observers=[], @score=0>
> score_statistics = ScoresStatistics.new
=> #<ScoresStatistics:0x007fbf3f842708>
> game_results.add_observer score_statistics
=> [#<ScoresStatistics:0x007fbf3f842708>]
> game_results.score = 2
doing something with score: 2
=> 2
