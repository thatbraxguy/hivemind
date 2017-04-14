defmodule Hivemind.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :token, :string
      add :provider, :string

      timestamps()
    end
  end
end
