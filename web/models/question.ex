defmodule ChatbotElixir.Question do
  use ChatbotElixir.Web, :model

  schema "questions" do
    field :name, :string
    embeds_many :inputs, ChatbotElixir.Input
    belongs_to :bot, ChatbotElixir.Bot

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> cast_embed(params, [:inputs])
    |> validate_required([:name])
  end

  def user_inputs(inputs) do
    inputs |> Enum.filter(fn(i) -> i.user end)
  end
end
