defmodule Users.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :password, :string
    field :token, :string
  end
end