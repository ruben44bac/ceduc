defmodule CeducWeb.EducationLive.Index do
  @moduledoc """
  Module for EducationLive.Index
  """
  use CeducWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       loading: false,
       section_id: 2,
       short_list: get_short_list([])
     )}
  end

  @impl true
  def handle_params(%{"type" => type}, _url, socket) do
    {list, page_title} =
      case type do
        "maestria" -> {get_masters(), "Maestría"}
        "doctorado" -> {get_doctors(), "Doctorado"}
        _ -> {get_licenciatura(), "Licenciatura"}
      end

    {:noreply, assign(socket, list: list, page_title: page_title)}
  end

  def build_class_list(list) do
    IO.inspect(length(list), label: "whats -> ")

    {r_cols, cols} =
      case length(list) do
        2 -> {"2", "1"}
        x when x < 6 -> {"3", "1"}
        _ -> {"4", "2"}
      end

    "mx-auto grid max-w-2xl auto-rows-fr grid-cols-#{cols} gap-2 md:gap-4 mt-12 md:mx-0 md:max-w-none md:grid-cols-#{r_cols}"
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
