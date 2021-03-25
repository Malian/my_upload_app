defmodule MyUploadAppWeb.PageLive do
  use MyUploadAppWeb, :surface_live_view

  data images, :upload, accept: :any, max_entries: 5, auto_upload: true, progress: &handle_progress/3

  def handle_event("save", _, socket) do
    IO.inspect("save")
    {:noreply, socket}
  end

  def handle_event("validate", _, socket) do
    IO.inspect("validate")
    {:noreply, socket}
  end

  def handle_progress(:images, entry, socket) do
    IO.inspect(entry)
    {:noreply, socket}
  end

end
