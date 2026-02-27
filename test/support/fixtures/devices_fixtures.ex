defmodule Mimir.DevicesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Mimir.Devices` context.
  """

  @doc """
  Generate a device.
  """
  def device_fixture(attrs \\ %{}) do
    {:ok, device} =
      attrs
      |> Enum.into(%{
        name: "some name",
        uuid: "7488a646-e31f-11e4-aace-600308960662"
      })
      |> Mimir.Devices.create_device()

    device
  end
end
