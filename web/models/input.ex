defmodule ChatbotElixir.Input do
  use ChatbotElixir.Web, :model

  embedded_schema do
    field :name
    field :type
    field :user, :boolean
  end
end
