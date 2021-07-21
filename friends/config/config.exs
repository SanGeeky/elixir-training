import Config

config :friends, Friends.Repo,
  database: "friends_repo",
  username: "sangeeky",
  password: "elixir12",
  hostname: "localhost"

config :friends, ecto_repos: [Friends.Repo]
