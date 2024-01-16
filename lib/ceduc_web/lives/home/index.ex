defmodule CeducWeb.HomeLive.Index do
  @moduledoc """
  Module for HomeLive.Index
  """
  use CeducWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    licenciaturas = get_licenciatura()
    masters = get_masters()
    doctors = get_doctors()

    {:ok,
     assign(socket,
       page_title: "Home",
       banner_position: 1,
       last_banner_position: 0,
       licenciaturas: licenciaturas,
       masters: masters,
       doctors: doctors,
       loading: false,
       section_id: 1,
       short_list: get_short_list(licenciaturas),
       banners: get_banners()
     )}
  end

  def handle_event("change_banner", %{"type" => type}, socket) do
    banner_position =
      if type == "-1" do
        socket.assigns.banner_position - 1
      else
        socket.assigns.banner_position + 1
      end
      |> case do
        0 -> 5
        6 -> 1
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
        img: "/images/licenciatura.jpg",
        title: "Licenciatura",
        content: "Estudia en la escuela privada más sofisticada de la Zona Metropolitana.",
        with_button: false,
        action: nil,
        id: 2
      },
      %{
        img: "/images/maestria.jpg",
        title: "Maestría",
        content: "Gana hasta 90% más estudiando una maestría ¡Alcanza tus metas!",
        with_button: false,
        action: nil,
        id: 3
      },
      %{
        img: "/images/doctorado.jpg",
        title: "Doctorado",
        content: "Eligen entre nuestras grandes ofertas de doctorado y pasa al siguiente nivel",
        with_button: false,
        action: nil,
        id: 4
      },
      %{
        img: "/images/mas.jpg",
        title: "Más",
        content: "Deja tus datos y nosotros te daremos la atención personalizada que requieres",
        with_button: true,
        action: "#contact",
        id: 5
      }
    ]
  end

  defp get_licenciatura do
    [
      %{
        id: 1,
        name: "Derecho",
        description: "",
        years: "4 años",
        image: "/images/"
      },
      %{
        id: 2,
        name: "Administración de Empresas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 3,
        name: "Pedagogía",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 4,
        name: "Psicología",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 5,
        name: "Criminalística",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 6,
        name: "Mercadotecnia",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 7,
        name: "Relaciones Internacionales",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 8,
        name: "Lenguas Inglesas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 9,
        name: "Seguridad Pública",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 10,
        name: "Contabilidad",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 11,
        name: "Teología",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 12,
        name: "Teología Yoruba y Ciencias Ocultas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 13,
        name: "Ingeniería Civil",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 14,
        name: "Ingeniería Industrial",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 15,
        name: "Ingeniería Mecánica",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 16,
        name: "Arquitectura",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 17,
        name: "Diseño Gráfico",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 18,
        name: "Ingeniería en Sistemas Computacionales y Programador",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 19,
        name: "Diseñador de Videojuegos",
        description: "",
        years: "4 años",
        image: ""
      }
    ]
  end

  defp get_masters do
    [
      %{
        id: 1,
        name: "Administración de Empresas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 2,
        name: "Derecho",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 3,
        name: "Finanzas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 4,
        name: "Administración Pública",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 5,
        name: "Administración Hospitalaria",
        description: "",
        years: "4 años",
        image: ""
      }
    ]
  end

  defp get_doctors do
    [
      %{
        id: 1,
        name: "Administración de Empresas",
        description: "",
        years: "4 años",
        image: ""
      },
      %{
        id: 2,
        name: "Derecho",
        description: "",
        years: "4 años",
        image: ""
      }
    ]
  end
end
