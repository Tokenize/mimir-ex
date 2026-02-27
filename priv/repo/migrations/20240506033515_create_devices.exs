defmodule Mimir.Repo.Migrations.CreateDevices do
  use Ecto.Migration

  def change do
    create table(:devices) do
      add :name, :string, null: false
      add :uuid, :uuid, unique: true, null: false
      add :user_id, references(:users)

      timestamps(type: :utc_datetime)
    end

    flush()

    create index("devices", :user_id)
    create index("devices", :uuid, unique: true)
  end
end
