defmodule XFirstApiWeb.ChatJSON do
  alias XFirstApi.Chats.Chat

  @doc """
  Renders a list of chats.
  """
  def index(%{chats: chats}) do
    %{data: for(chat <- chats, do: data(chat))}
  end

  @doc """
  Renders a single chat.
  """
  def show(%{chat: chat}) do
    %{data: data(chat)}
  end

  defp data(%Chat{} = chat) do
    %{
      id: chat.id,
      user_id: chat.user_id,
      text: chat.text
    }
  end
end
