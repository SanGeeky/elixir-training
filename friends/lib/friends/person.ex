defmodule Friends.Person do
  use Ecto.Schema
  import Ecto.Changeset
  alias Friends.Repo

  schema "people" do
    field :name, :string
    field :age, :integer, default: 0
  end

  def set_name_if_anonymous(changeset) do
    name = get_field(changeset, :name)

    if is_nil(name) do
      put_change(changeset, :name, "Anonymous")
    else
      changeset
    end
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
    |> validate_length(:name, min: 2)
  end

  def registration_changeset(struct, params) do
    struct
    |> cast(params, [:name, :age])
    |> set_name_if_anonymous()
  end

  def sign_up(params) do
    %Friends.Person{}
    |> Friends.Person.registration_changeset(params)
    |> Repo.insert()
  end
end
