defmodule ChatbotElixir.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :name, :string
      add :bot_id, references(:bots, on_delete: :nothing)

      timestamps()
    end
    create index(:questions, [:bot_id])

  end
end
