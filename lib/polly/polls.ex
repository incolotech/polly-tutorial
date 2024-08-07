defmodule Polly.Polls do
  @moduledoc """
  This module holds functions related to CRUD operations for Polls
  """
  alias Polly.Schema.Poll

  def list_polls() do
    Polly.PollsManager.list_polls_with_ids()
  end

  @spec get_poll(binary(), boolean()) :: Poll.t() | nil
  def get_poll(poll_id, with_option_votes \\ false) do
    try do
      Polly.PollsManager.get_poll!(poll_id, with_option_votes)
    rescue
      ArgumentError ->
        nil
    end
  end

  @spec create_poll(map()) :: {:ok, Poll.t()} | {:error, Ecto.Changeset.t()}
  def create_poll(params) do
    # TODO: implement this function
  end

  defp do_create_poll({:ok, %Poll{} = poll}) do
    # TODO: implement this function
  end

  defp do_create_poll({:error, changeset}) do
    {:error, changeset}
  end
end
