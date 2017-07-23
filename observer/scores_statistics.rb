class ScoresStatistics
  def update(game_results)
    do_something_with game_results.score
  end

  private

  def do_something_with(score)
    puts "doing something with score: #{score}"
  end
end
