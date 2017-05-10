defmodule Shop.Schema.Shop.Type do
  use Absinthe.Schema.Notation
  import_types Shop.Schema.Product.Type
  use Absinthe.Ecto, repo: Shop.Repo

  object :shop do
    field :id, :id
    field :name, :string
    field :products, list_of(:product), resolve: assoc(:products)
  end
end
