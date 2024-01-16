defmodule Ceduc.Repo.Migrations.CreateBlog do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, size: 70, null: false
      add :first_surname, :string, size: 70
      add :second_surname, :string, size: 70
      add :avatar, :string, size: 150
      add :email, :string, size: 100, null: false
      add :password, :string, size: 200

      timestamps()
    end

    create table(:blogs) do
      add :title, :string, size: 100, null: false
      add :subtitle, :string, size: 100, null: false
      add :description, :string
      add :available_date, :naive_datetime
      add :img_mini, :string, size: 150
      add :content_link, :string, size: 150

      add :user_id, references(:users), null: false

      timestamps()
    end

    create table(:contacts) do
      add :name, :string, size: 70, null: false
      add :first_surname, :string, size: 70
      add :second_surname, :string, size: 70
      add :email, :string, size: 100
      add :phone, :string, size: 12
      add :message, :string

      timestamps()
    end
  end
end
