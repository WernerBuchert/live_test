defmodule LiveTestWeb.InnerLive do
  use LiveTestWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="flex flex-col">
      Current temperature: <%= @temperature %> °F
      <div class="flex justify-center m-2">
        <button
          phx-click="inc_temperature"
          id="button-temperature"
          class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium text-sm p-2.5 text-center inline-flex items-center me-2"
        >
          +
        </button>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    # Let's assume a fixed temperature for now
    temperature = 70
    {:ok, assign(socket, :temperature, temperature)}
  end

  def handle_event("inc_temperature", _params, socket) do
    {:noreply, update(socket, :temperature, &(&1 + 1))}
  end
end
