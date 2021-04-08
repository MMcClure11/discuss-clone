defmodule DiscussClone.Repo do
  use Ecto.Repo,
    otp_app: :discuss_clone,
    adapter: Ecto.Adapters.Postgres
end
