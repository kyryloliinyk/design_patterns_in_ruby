class GameResults
  include Observerable

  attr_reader :score, :fouls

  def initialize
    super()
    @score = 0
    @fouls = 0
  end

  def score=(value)
    @score = value
    notify_observers
  end

  def fouls=(value)
    @fouls = value
    notify_observers
  end
end
