defmodule Shop.Schema do
  use Absinthe.Schema
  import_types Shop.Schema.Shop.Type

  query do
    field :shops, :string do
      resolve fn(_args, _info) -> {:ok, "test"} end
    end
  end


end
