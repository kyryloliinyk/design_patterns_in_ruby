# Concrete form class inherited from Abstract class
class Create < Base
  # Expects to receive two attributes type of String
  attribute :attribute_one, String
  attribute :attribute_two, String

  # Validates attributes to be present
  validates :attribute_one, :attribute_two, presence: true

  # Defines 'record' hook which is required by abstract class
  def record
    @record ||= SomeModel.new
  end

  private

  # Defines 'persist!' hook which is required by abstract class
  def persist!
    record.assign_attributes(
      attribute_one: attribute_one,
      attribute_two: attribute_two
    )
    record.save!
  end
end
