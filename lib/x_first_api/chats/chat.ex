defmodule XFirstApi.Chats.Chat do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chats" do
    field :text, :string
    field :user_id, Ecto.UUID

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(chat, attrs) do
    chat
    |> cast(attrs, [:user_id, :text])
    |> validate_required([:user_id, :text])
  end
end
