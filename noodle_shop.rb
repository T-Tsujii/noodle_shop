require_relative "string"

class NoodleShop
  attr_reader :items
  HR_STR = "*" * 30

  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display_items
    str = "\n"
    str << "ようこそ 「#{@name}」 へ\n"
    str << "本日のメニューはこちらです。\n\n"
    str << "#{HR_STR}\n"
    @items.each.with_index(1) do |item, index|
      str << "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(18)}: #{item.price}円\n"
    end
    str << "#{HR_STR}\n\n"
    puts str
  end

  def sell(user, item)
    str = "\n"
    str << "#{item.name}ですね。#{item.price}円いただきます。\n"
    str << "#{user.possession}円頂戴します。\n"
    str << "おつりは#{user.possession - item.price}円です。\n"
    str << "\n"
    str << "またのおこしを！"
    puts str
  end
end
