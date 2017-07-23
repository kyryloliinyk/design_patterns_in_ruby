class FaulsStatistics
  def update(game_results)
    do_something_with game_results.fauls
  end

  private

  def do_something_with(fauls)
    puts "doing something with fauls: #{fauls}"
  end
end
