defmodule Polly.Schema.Poll do
  @moduledoc """
  Represents a Poll struct
  """
  use Ecto.Schema

  alias Polly.Schema.Poll
  alias Polly.Schema.Option

  import Ecto.Changeset

  @type t :: %__MODULE__{}

  embedded_schema do
    field(:title, :string)
    field(:description, :string)
    field(:total_votes, :integer, default: 0)
    field(:creator_username, :string)
    field(:created_at, :naive_datetime)
    embeds_many(:options, Option, on_replace: :delete)
  end

  def changeset(%Poll{} = poll, attrs \\ %{}) do
    # TODO: implement this function
  end

  defp put_id(%Ecto.Changeset{valid?: true} = changeset) do
    # TODO: implement this function
  end

  defp put_id(%Ecto.Changeset{valid?: false} = changeset) do
    changeset
  end

  defp put_created_at(%Ecto.Changeset{valid?: true} = changeset) do
    # TODO: implement this function
  end

  defp put_created_at(%Ecto.Changeset{valid?: false} = changeset) do
    changeset
  end

  # defstruct title: nil, options: [], total_votes: 0, created_at: nil
end
