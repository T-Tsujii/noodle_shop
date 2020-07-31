class User
  attr_reader :possession

  def initialize(possession:)
    @possession = possession
  end

  def choice(items)
    print "メニュー番号を選択して下さい > "
    item_num = gets.to_i
    items[item_num - 1]
  end
end
