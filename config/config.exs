import Config

config :app, Users.Repo,
  database: "app_repo",
  # username: "zarab",
  # password: "1480",
  hostname: "localhost"

config :app, ecto_repos: [Users.Repo]
  
