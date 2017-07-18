defmodule ChatbotElixir.Repo.Migrations.AddInputsToQuestions do
  use Ecto.Migration

  def change do
    alter table(:questions) do
      add :inputs, {:array, :map}, default: []
    end
  end
end
