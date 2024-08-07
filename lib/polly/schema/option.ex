defmodule Polly.Schema.Option do
  @moduledoc """
  Represent an option associated to a poll
  """
  use Ecto.Schema

  import Ecto.Changeset

  alias Polly.Schema.Option

  @type t :: %__MODULE__{}

  embedded_schema do
    field(:text, :string)
    field(:votes, :integer, default: 0)
  end

  def changeset(%Option{} = option, attrs \\ %{}) do
    # TODO: implement this function
  end

  defp put_id(%Ecto.Changeset{valid?: true} = changeset) do
    # TODO: implement this function
  end

  defp put_id(%Ecto.Changeset{valid?: false} = changeset) do
    changeset
  end
end
