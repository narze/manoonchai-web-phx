defmodule Manoonchai.Repo do
  use Ecto.Repo,
    otp_app: :manoonchai,
    adapter: Ecto.Adapters.Postgres
end
