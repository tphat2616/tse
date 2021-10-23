defmodule TseApi.Repo do
  use Ecto.Repo,
    otp_app: :tse_api,
    adapter: Ecto.Adapters.Postgres
end
