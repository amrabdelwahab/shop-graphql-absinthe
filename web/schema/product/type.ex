defmodule Shop.Schema.Product.Type do
  use Absinthe.Schema.Notation

  object :product do
    field :id, :id
    field :name, :string
    field :price, :float
  end
end
