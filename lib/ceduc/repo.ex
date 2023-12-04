defmodule Ceduc.Repo do
  use Ecto.Repo,
    otp_app: :ceduc,
    adapter: Ecto.Adapters.Postgres
end
