defmodule Teacher.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :summary, :text
      add :year, :string
      add :genre, :string

      timestamps()
    end

  end
end
