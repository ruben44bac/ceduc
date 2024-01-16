defmodule Ceduc.Contexts.Blog.Blog do
  @moduledoc """
  Schema for Blog
  """
  use Ecto.Schema

  import Ecto.Changeset, warn: false

  alias Ceduc.Contexts.Account.User

  schema "blogs" do
    field :title, :string
    field :subtitle, :string
    field :description, :string
    field :available_date, :naive_datetime
    field :img_mini, :string
    field :content_link, :string

    belongs_to :user, User,
      foreign_key: :user_id,
      references: :id,
      type: :integer

    timestamps()
  end

  @req_attrs [
    :title,
    :subtitle,
    :available_date,
    :user_id
  ]
  @attrs @req_attrs ++
           [
             :description,
             :img_mini,
             :content_link
           ]

  @doc false
  def changeset(entity, attrs) do
    entity
    |> cast(attrs, @attrs)
    |> validate_required(@req_attrs)
  end
end
