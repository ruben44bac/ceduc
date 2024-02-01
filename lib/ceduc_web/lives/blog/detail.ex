defmodule CeducWeb.BlogLive.Detail do
  @moduledoc """
  Module for EducationLive.Detail
  """
  use CeducWeb, :live_view

  alias Ceduc.Contexts.Blog.BlogManager

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       loading: true,
       blog: nil,
       section_id: 3,
       page_title: "Blog",
       content: ""
     )}
  end

  @impl true
  def handle_params(%{"id" => id}, _url, socket) do
    {blog, content} = BlogManager.get(id)
    {:noreply, assign(socket, blog: blog, page_title: blog.title, content: content)}
  end
end
