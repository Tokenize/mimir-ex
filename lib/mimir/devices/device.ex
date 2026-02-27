defmodule Mimir.Devices.Device do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mimir.User

  schema "devices" do
    field :name, :string
    field :uuid, Ecto.UUID

    belongs_to :user, User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(device, attrs) do
    device
    |> cast(attrs, [:name, :uuid])
    |> validate_required([:name, :uuid])
  end
end
