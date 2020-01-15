defmodule Ledger.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :birthday, :utc_datetime
      add :password, :string
      add :scope, {:array, :string}

      timestamps()
    end

  end
end
