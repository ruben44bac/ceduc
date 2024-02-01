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

  def get_lasts do
    Blog
    |> order_by([b], desc: b.available_date)
    |> preload([:user])
    |> limit(3)
    |> Repo.all()
  end

  def get(id) do
    Blog
    |> Repo.get(id)
    |> Repo.preload([:user])
    |> get_content()
  end

  defp get_content(blog) do
    :code.priv_dir(:ceduc)
    |> Path.join(blog.content_link)
    |> File.read()
    |> case do
      {:ok, content} -> {blog, content}
      _ -> {blog, ""}
    end
  end
end
