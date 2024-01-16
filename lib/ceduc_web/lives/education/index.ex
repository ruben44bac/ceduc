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
       list_type: 0
     )}
  end

  @impl true
  def handle_params(%{"type" => type} = args, _url, socket) do
    {org_list, page_title} =
      case type do
        "maestria" -> {get_masters(), "Maestría"}
        "doctorado" -> {get_doctors(), "Doctorado"}
        _ -> {get_licenciatura(), "Licenciatura"}
      end

    list_type =
      args
      |> Map.get("list_type", "0")
      |> String.to_integer()
      |> IO.inspect()

    list =
      if list_type == 0 do
        org_list
      else
        Enum.filter(org_list, &(&1.type == list_type))
      end

    {:noreply,
     assign(socket, list: list, org_list: org_list, page_title: page_title, list_type: list_type)}
  end

  @impl true
  def handle_event("filter", %{"type" => "0"}, socket) do
    {:noreply, assign(socket, list: socket.assigns.org_list, list_type: 0)}
  end

  def handle_event("filter", %{"type" => type}, socket) do
    type = String.to_integer(type)
    list = Enum.filter(socket.assigns.org_list, &(&1.type == type))
    {:noreply, assign(socket, list: list, list_type: type)}
  end

  defp get_licenciatura do
    [
      %{
        id: 1,
        name: "Derecho",
        description: "",
        years: "4 años",
        image: "/images/",
        type: 1
      },
      %{
        id: 2,
        name: "Administración de Empresas",
        description: "",
        years: "4 años",
        image: "",
        type: 2
      },
      %{
        id: 3,
        name: "Pedagogía",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 4,
        name: "Psicología",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 5,
        name: "Criminalística",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 6,
        name: "Mercadotecnia",
        description: "",
        years: "4 años",
        image: "",
        type: 2
      },
      %{
        id: 7,
        name: "Relaciones Internacionales",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 8,
        name: "Lenguas Inglesas",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 9,
        name: "Seguridad Pública",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 10,
        name: "Contabilidad",
        description: "",
        years: "4 años",
        image: "",
        type: 2
      },
      %{
        id: 11,
        name: "Teología",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 12,
        name: "Teología Yoruba y Ciencias Ocultas",
        description: "",
        years: "4 años",
        image: "",
        type: 1
      },
      %{
        id: 13,
        name: "Ingeniería Civil",
        description: "",
        years: "4 años",
        image: "",
        type: 4
      },
      %{
        id: 14,
        name: "Ingeniería Industrial",
        description: "",
        years: "4 años",
        image: "",
        type: 4
      },
      %{
        id: 15,
        name: "Ingeniería Mecánica",
        description: "",
        years: "4 años",
        image: "",
        type: 4
      },
      %{
        id: 16,
        name: "Arquitectura",
        description: "",
        years: "4 años",
        image: "",
        type: 3
      },
      %{
        id: 17,
        name: "Diseño Gráfico",
        description: "",
        years: "4 años",
        image: "",
        type: 3
      },
      %{
        id: 18,
        name: "Ingeniería en Sistemas Computacionales y Programador",
        description: "",
        years: "4 años",
        image: "",
        type: 4
      },
      %{
        id: 19,
        name: "Diseñador de Videojuegos",
        description: "",
        years: "4 años",
        image: "",
        type: 3
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
