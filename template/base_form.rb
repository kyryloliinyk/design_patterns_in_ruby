class Base
  include Virtus.model
  include ActiveModel::Model

  def persisted?
    false
  end

  def record
    raise NotImplementedError
  end

  def save
    return false unless valid?
    persist!
    true
  end

  private

  def persist!
    raise NotImplementedError
  end
end
