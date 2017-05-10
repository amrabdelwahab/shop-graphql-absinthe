defmodule Shop.Schema.Shop.Type do
  use Absinthe.Schema.Notation

  object :shop do
    field :id, :id
    field :name, :string
  end
end
