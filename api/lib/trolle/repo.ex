defmodule Trolle.Repo do
  use Ecto.Repo,
    otp_app: :trolle,
    adapter: Ecto.Adapters.Postgres
end
