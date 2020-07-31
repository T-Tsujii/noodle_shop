require "csv"

class Item
  attr_reader :name, :price

  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def self.import(path:)
    items = []
    CSV.foreach(path, headers: true) do |row|
      items << Item.new(
        name: row["name"],
        price: row["price"].to_i,
      )
    end
    items
  end
end
