defmodule CeducWeb.HomeLive.Index do
  @moduledoc """
  Module for HomeLive.Index
  """
  use CeducWeb, :live_view

  alias Ceduc.Contexts.Blog.BlogManager

  @impl true
  def mount(_params, _session, socket) do
    blogs = BlogManager.get_lasts()

    {:ok,
     assign(socket,
       page_title: "Home",
       banner_position: 1,
       last_banner_position: 0,
       loading: false,
       section_id: 1,
       blogs: blogs,
       banners: get_banners()
     )}
  end

  @impl true
  def handle_event("change_banner", %{"type" => type}, socket) do
    banner_position =
      if type == "-1" do
        socket.assigns.banner_position - 1
      else
        socket.assigns.banner_position + 1
      end
      |> case do
        0 -> 2
        3 -> 1
        val -> val
      end

    {:noreply,
     assign(socket,
       banner_position: banner_position,
       last_banner_position: socket.assigns.banner_position
     )}
  end

  def handle_event("select_banner", %{"item" => id_string}, socket) do
    id = String.to_integer(id_string)

    last_banner =
      case id - 1 do
        0 -> 5
        6 -> 1
        val -> val
      end

    {:noreply,
     assign(socket,
       banner_position: id,
       last_banner_position: last_banner
     )}
  end

  def get_banner_class(banner, banner_position, _last_banner_position) do
    if banner.id == banner_position do
      "duration-700 ease-in-out absolute inset-0 transition-transform transform translate-x-0 z-20"
    else
      "duration-700 ease-in-out absolute inset-0 transition-transform transform translate-x-full z-10"
    end
  end

  def get_class_banner_button(id, banner_position) do
    if id == banner_position do
      "w-3 h-3 rounded-full bg-prim hover:bg-white border-2 border-white"
    else
      "w-3 h-3 rounded-full bg-slate-300 hover:bg-white"
    end
  end

  defp get_short_list(original_list) do
    list =
      original_list
      |> Enum.chunk_every(3)
      |> List.first()

    %{
      list: list,
      original_list: original_list
    }
  end

  defp get_banners do
    [
      %{
        img: "/images/banner_1.jpg",
        title: "El mejor viaje para el aprendizaje comienza aquí",
        content: "Selecciona entre nuestras diferentes carreras",
        with_button: false,
        action: nil,
        id: 1
      },
      %{
        img: "/images/banner_2.jpg",
        title: "Licenciatura",
        content: "Estudia en la escuela privada más sofisticada de la Zona Metropolitana.",
        with_button: false,
        action: nil,
        id: 2
      }
    ]
  end
end
