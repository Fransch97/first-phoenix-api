defmodule XFirstApi.Repo do
  use Ecto.Repo,
    otp_app: :x_first_api,
    adapter: Ecto.Adapters.Postgres
end
