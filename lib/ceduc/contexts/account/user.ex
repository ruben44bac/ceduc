defmodule Ceduc.Contexts.Account.User do
  @moduledoc """
  Schema for User
  """
  use Ecto.Schema

  import Ecto.Changeset, warn: false

  schema "users" do
    field :name, :string, default: ""
    field :first_surname, :string, default: ""
    field :second_surname, :string, default: ""
    field :avatar, :string
    field :email, :string
    field :password, :string

    timestamps()
  end

  @req_attrs [
    :name,
    :email
  ]
  @attrs @req_attrs ++
           [
             :first_surname,
             :second_surname,
             :password,
             :avatar
           ]

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @attrs)
    |> validate_required(@req_attrs)
  end
end
