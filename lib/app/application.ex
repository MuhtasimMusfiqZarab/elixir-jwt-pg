defmodule App.Application do

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Users.Repo
    ]
    
    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
