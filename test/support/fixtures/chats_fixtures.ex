defmodule XFirstApi.ChatsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `XFirstApi.Chats` context.
  """

  @doc """
  Generate a chat.
  """
  def chat_fixture(attrs \\ %{}) do
    {:ok, chat} =
      attrs
      |> Enum.into(%{
        text: "some text",
        user_id: "7488a646-e31f-11e4-aace-600308960662"
      })
      |> XFirstApi.Chats.create_chat()

    chat
  end
end
