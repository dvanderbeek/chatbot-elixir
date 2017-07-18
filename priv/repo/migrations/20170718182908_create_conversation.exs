defmodule ChatbotElixir.Repo.Migrations.CreateConversation do
  use Ecto.Migration

  def change do
    create table(:conversations) do
      add :data, :map
      add :initial_data, :map
      add :bot_id, references(:bots, on_delete: :nothing)

      timestamps()
    end
    create index(:conversations, [:bot_id])

  end
end
