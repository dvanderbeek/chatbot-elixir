defmodule ChatbotElixir.Bot do
  use ChatbotElixir.Web, :model

  schema "bots" do
    field :name, :string
    has_many :conversations, ChatbotElixir.Conversation
    has_many :questions, ChatbotElixir.Question

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
