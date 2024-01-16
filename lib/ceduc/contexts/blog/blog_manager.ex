defmodule Ceduc.Contexts.Blog.BlogManager do
  import Ecto.Query

  alias Ceduc.Contexts.Blog.Blog
  alias Ceduc.Repo

  def get_all do
    Blog
    |> order_by([b], desc: b.available_date)
    |> preload([:user])
    |> Repo.all()
  end

  def get(id) do
    Blog
    |> Repo.get(id)
    |> get_content()
  end

  defp get_content(blog) do
    blog.content_link
    |> File.read_link()
    |> then(&{blog, &1})
  end
end
