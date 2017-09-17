class UpdateStatistics
  def execute(game_results)
    # statistics calculations ...
  end
end

class DoSomethingElse
  def execute(game_results)
    # something goes here ...
  end
end

class Observer
  def initialize(command)
    @command = command
  end

  def update(game_results)
    @command.execute(game_results)
  end
end
