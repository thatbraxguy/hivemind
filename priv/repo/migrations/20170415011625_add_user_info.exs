defmodule Hivemind.Repo.Migrations.AddUserInfo do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :avatar, :string
      add :name, :string
    end
  end
end
