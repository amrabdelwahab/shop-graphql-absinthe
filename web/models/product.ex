defmodule Shop.Product do
  use Shop.Web, :model

  schema "products" do
    field :name, :string
    field :price, :float
    belongs_to :shop, Shop.Shop

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price, :shop_id])
    |> validate_required([:name, :price, :shop_id])
  end
end
