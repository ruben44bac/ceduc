defmodule CeducWeb.HomeLive.Index do
  @moduledoc """
  Module for HomeLive.Index
  """
  use CeducWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       page_title: "Home",
       loading: true
     )}
  end
end
