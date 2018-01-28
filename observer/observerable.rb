# Observerable behavior
module Observerable
  # Will create empty array of observers
  # when 'source' object will be initialze
  def initialize
    @observers=[]
  end

  # Allows 'source' object to add observers...
  def add_observer(observer)
    @observers << observer
  end

  # ... and remove them
  def delete_observer(observer)
    @observers.delete(observer)
  end

  # Provides ability to notify observers about changes
  # Expects observers to respond on 'update' message
  # Sends 'source' object as an argument
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end
