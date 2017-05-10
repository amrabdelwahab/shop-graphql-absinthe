defmodule Shop.Schema do
  use Absinthe.Schema
  import_types Shop.Schema.Shop.Type

  query do
    field :shops, list_of(:shop) do
      resolve fn(_args, _info) -> {:ok, Shop.Repo.all(Shop.Shop)} end
    end
  end


end
