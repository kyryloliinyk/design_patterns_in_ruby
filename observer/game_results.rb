# GameResults has data that will be changed
# and we want other objects to be notified
# when that will happen
class GameResults
  # Includes required behavior to manage observers
  include Observerable

  attr_reader :score, :fouls

  def initialize
    # Allows Observerable to do it's job on initialize
    super()
    @score = 0
    @fouls = 0
  end

  # Setter methods will call 'notify_observers'
  # when data will be changed
  def score=(value)
    @score = value
    notify_observers
  end

  def fouls=(value)
    @fouls = value
    notify_observers
  end
end
