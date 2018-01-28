# Leaf
# Concrete Order class
class OrderDeck < Order
  # Defines 'total' method that is required by Order class
  def total
    # Has some business logic to calculate 'total'
    # For example, takes value from DB
    Deck.find(item_id).price
  end
end
