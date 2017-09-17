class Create < Base
  attribute :attribute_one,   String
  attribute :attribute_two,   String
  attribute :attribute_three, String

  validates :attribute_one,
            :attribute_two,
            :attribute_three,
            presence: true

  def record
    @record ||= SomeModel.new
  end

  private

  def persist!
    record.assign_attributes(
      attribute_one: attribute_one,
      attribute_two: attribute_two,
      attribute_three: attribute_three
    )
    record.save!
  end
end
