# Leaf
class OrderDeck < Order
  def initialize(item_id)
    super(item_id)
  end

  def total
    Deck.find(item_id).price
  end
end
