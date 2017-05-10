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
    |> cast(params, [:name, :price])
    |> validate_required([:name, :price])
  end
end
