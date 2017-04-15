defmodule Hivemind.User do
  use Hivemind.Web, :model

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    field :name, :string
    field :avatar, :string
    has_many :comments, Hivemind.Comment

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token, :name, :avatar])
    |> validate_required([:email, :provider, :token])
  end
end
