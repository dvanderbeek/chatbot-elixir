defmodule ChatbotElixir.ConversationTest do
  use ChatbotElixir.ModelCase

  alias ChatbotElixir.Conversation

  @valid_attrs %{data: %{}, initial_data: %{}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Conversation.changeset(%Conversation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Conversation.changeset(%Conversation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
