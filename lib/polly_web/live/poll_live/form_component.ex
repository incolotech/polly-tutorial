defmodule PollyWeb.PollLive.FormComponent do
  use PollyWeb, :live_component

  alias Polly.Polls
  alias Polly.Schema.Poll

  @impl true
  def render(assigns) do
    # TODO: complete this function

    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Create a New Poll</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="poll-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        # TODO: implement this section
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{poll: poll} = assigns, socket) do
    # TODO: implement this function
  end

  def handle_event("add-option", _, socket) do
    socket =
      update(socket, :changeset, fn changeset ->
        existing = Ecto.Changeset.get_field(changeset, :options, [])
        Ecto.Changeset.put_embed(changeset, :options, existing ++ [%{}])
      end)

    dbg(socket.assigns)
    socket = assign(socket, :form, to_form(socket.assigns.changeset))

    {:noreply, socket}
  end

  def handle_event("delete-option", %{"index" => index}, socket) do
    # TODO: implement this function
  end

  @impl true
  def handle_event("validate", %{"poll" => poll_params}, socket) do
    # TODO: implement this function
  end

  def handle_event("save", %{"poll" => poll_params}, socket) do
    save_poll(socket, socket.assigns.action, poll_params)
  end

  defp save_poll(socket, :new, poll_params) do
    # add the creator_username to the poll params so it can be added to the Poll
    # TODO: implement this function
  end

  defp assign_form(socket, changeset) do
    socket
    |> assign(:form, to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
