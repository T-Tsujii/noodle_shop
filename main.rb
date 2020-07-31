require "pry"
require_relative "item"
require_relative "noodle_shop"
require_relative "user"

SHOP_NAME = "ラーメン たけ"
POSSESSION = 2000

shop_items = Item.import(path: "items.csv")
shop = NoodleShop.new(name: SHOP_NAME, items: shop_items)
user = User.new(possession: POSSESSION)

shop.display_items
item = user.choice(shop.items)
shop.sell(user, item)
