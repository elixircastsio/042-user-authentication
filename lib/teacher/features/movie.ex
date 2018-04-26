defmodule Teacher.Features.Movie do
  use Ecto.Schema
  import Ecto.Changeset
  alias Teacher.Features.Movie


  schema "movies" do
    field :genre, :string
    field :summary, :string
    field :title, :string
    field :year, :string

    timestamps()
  end

  @doc false
  def changeset(%Movie{} = movie, attrs) do
    movie
    |> cast(attrs, [:title, :summary, :year, :genre])
    |> validate_required([:title, :summary, :year, :genre])
  end
end
