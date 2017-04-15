defmodule Hivemind.Comment do
  use Hivemind.Web, :model

  schema "comments" do
    field :content, :string
    belongs_to :user, Hivemind.User
    belongs_to :topic, Hivemind.Topic

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end