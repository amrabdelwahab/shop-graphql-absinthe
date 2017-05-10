defmodule Shop.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :float
      add :shop_id, references(:shops, on_delete: :nothing)

      timestamps()
    end
    create index(:products, [:shop_id])

  end
end
