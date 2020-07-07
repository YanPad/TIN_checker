defmodule TinChecker.Repo do
  use Ecto.Repo,
    otp_app: :tin_checker,
    adapter: Ecto.Adapters.Postgres
end
