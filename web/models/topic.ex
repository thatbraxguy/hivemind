defmodule Hivemind.Topic do
  use Hivemind.Web, :model

  schema "topics" do
    field :title, :string
    field :description, :string
    has_many :comments, Hivemind.Comment
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title])
  end
end