defmodule ChatbotElixir.Conversation do
  use ChatbotElixir.Web, :model

  schema "conversations" do
    field :data, :map
    field :initial_data, :map
    belongs_to :bot, ChatbotElixir.Bot

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:data, :initial_data])
    |> validate_required([:data, :initial_data])
  end
end
