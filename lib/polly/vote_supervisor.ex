defmodule Polly.VoteSupervisor do
  @moduledoc """
  VoteSupervisor is a dynamic supervisor which is responsible for managing all the VoteManagers.
  We are using a Registry to keep track of all VoteManagers created.
  The reason for using the Registry is that this supervisor could potentially be created under a PartitionedSupervisor
  and to fetch/find a VoteManager would become a complicated task without a Registry.
  """
  use DynamicSupervisor

  require Logger

  @registry_name Polly.VoteRegistry

  def start_link(_) do
    # TODO: implement this function
  end

  @doc """
  Starts a VoteManager process under the Dynamic supervisor.
  It also checks if a VoteManager for the same username already exists or not,
  if it does then nothing is done and :ignore is returned
  """
  @spec start_child(binary()) :: DynamicSupervisor.on_start_child()
  def start_child(username) do
    # TODO: implement this function
  end

  @impl true
  def init(init_arg) do
    DynamicSupervisor.init(init_arg)
  end

  @spec get_pid(String.t()) :: pid() | nil
  defp get_pid(username) do
    # TODO: implement this function
  end
end
