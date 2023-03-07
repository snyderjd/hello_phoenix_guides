defmodule HelloWeb.CartView do
  use HelloWeb, :view

  alias Hello.ShoppingCart

  @spec currency_to_str(Decimal.t()) :: nonempty_binary
  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
