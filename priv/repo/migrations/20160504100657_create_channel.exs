defmodule TvApi.Repo.Migrations.CreateChannel do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :name, :string
      add :active, :boolean, default: false

      timestamps
    end

  end
end
