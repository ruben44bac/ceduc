defmodule CeducWeb.AboutLive.Index do
  @moduledoc """
  Module for AboutLive.Index
  """
  use CeducWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       loading: true,
       list: [],
       section_id: 4,
       page_title: "Nosotros"
     )}
  end
end
