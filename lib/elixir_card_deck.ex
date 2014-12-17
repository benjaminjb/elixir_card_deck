# defmodule MySigils do
#   def sigil_a(string, []), do: String.to_atom(string)
# end

defmodule ElixirCardDeck do
  # import MySigils
  def make_deck do
    suits = Enum.map(~w{spades clubs diamonds hearts}, &String.to_atom/1)
    values = [:a, 2, 3, 4, 5, 6, 7, 8, 9, 10, :j, :q, :k] 

    for y <- values, x <- suits, do: {:card, y, x}
  end
end
