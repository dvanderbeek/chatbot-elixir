defmodule ChatbotElixir.BotTest do
  use ChatbotElixir.ModelCase

  alias ChatbotElixir.Bot

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Bot.changeset(%Bot{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Bot.changeset(%Bot{}, @invalid_attrs)
    refute changeset.valid?
  end
end
