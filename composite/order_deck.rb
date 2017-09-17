# Leaf
class OrderDeck < Order
  def total
    Deck.find(item_id).price
  end
end
