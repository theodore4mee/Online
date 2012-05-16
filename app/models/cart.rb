class Cart attr_reader
  attr_reader :items ?! page 652
    def initialize
      @items = []
    end
  def add_product(product)
   @items << product
  end
  
  def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item
      current_item.increment_quantity
    else
      @items << CartItem.new(product)
  end
end