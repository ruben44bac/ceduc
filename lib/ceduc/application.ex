defmodule Ceduc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      CeducWeb.Telemetry,
      Ceduc.Repo,
      {DNSCluster, query: Application.get_env(:ceduc, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Ceduc.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Ceduc.Finch},
      # Start a worker by calling: Ceduc.Worker.start_link(arg)
      # {Ceduc.Worker, arg},
      # Start to serve requests, typically the last entry
      CeducWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ceduc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CeducWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
