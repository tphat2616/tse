defmodule TseApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TseApi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: TseApi.PubSub}
      # Start a worker by calling: TseApi.Worker.start_link(arg)
      # {TseApi.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: TseApi.Supervisor)
  end
end
