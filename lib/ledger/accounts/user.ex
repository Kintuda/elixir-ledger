defmodule Ledger.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :birthday, :utc_datetime
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :password, :string
    field :scope, {:array, :string}

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :birthday, :password, :scope])
    |> validate_required([:first_name, :last_name, :email, :birthday, :password, :scope])
  end
end
