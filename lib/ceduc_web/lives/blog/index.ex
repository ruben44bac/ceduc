defmodule CeducWeb.BlogLive.Index do
  @moduledoc """
  Module for EducationLive.Index
  """
  use CeducWeb, :live_view

  alias Ceduc.Contexts.Blog.BlogManager

  @impl true
  def mount(_params, _session, socket) do
    send(self(), :after_join)

    {:ok,
     assign(socket,
       loading: true,
       list: [],
       section_id: 3,
       page_title: "Blog"
     )}
  end

  @impl true
  def handle_info(:after_join, socket) do
    list = BlogManager.get_all()
    {:noreply, assign(socket, list: list, loading: false)}
  end
end
