defmodule Mimir.Repo do
  use Ecto.Repo,
    otp_app: :mimir,
    adapter: Ecto.Adapters.Postgres
end
