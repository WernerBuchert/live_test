defmodule LiveTestWeb.MainLive.Index do
  use LiveTestWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :text, "Main Content of the application.")}
  end
end
