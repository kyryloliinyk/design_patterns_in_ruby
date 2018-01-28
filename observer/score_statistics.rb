# Object that wants to be notified
# when game_results will be changed

class ScoreStatistics
  # Provides 'update' method, expected by Observerable
  # Expects to receive game_results object
  def update(game_results)
    # Expects game_results to respond on 'score' message
    do_something_with game_results.score
  end

  private

  # Does something with new score state
  def do_something_with(score)
    puts "doing something with score: #{score}"
  end
end
