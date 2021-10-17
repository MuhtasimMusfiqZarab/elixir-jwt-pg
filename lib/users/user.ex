defmodule Users.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :password, :string
    field :token, :string
  end


  def changeset(car, params \\ %{}) do
  person
  |> Ecto.Changeset.cast(params, [:name, :password, :token])
  |> Ecto.Changeset.validate_required([:name, :password])
end

end