defmodule ChatbotElixir.Input do
  use ChatbotElixir.Web, :model

  embedded_schema do
    field :name
    field :type
    field :user, :boolean
  end

  def changeset(struct, params) do
    struct
    |> cast(Map.from_struct(params), [:name, :type, :user])
    |> validate_required([:name, :type, :user])
  end
end
