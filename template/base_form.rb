# Abstract base form
class Base
  # Adds required behavior to inherited classes
  include Virtus.model
  include ActiveModel::Model

  # Requires all forms to implement 'record' hook
  def record
    raise NotImplementedError
  end

  # Provides unified saving algorithm for all forms
  def save
    return false unless valid?
    persist!
    true
  end

  private

  # Requires all forms to implement 'persist!' hook
  def persist!
    raise NotImplementedError
  end
end
