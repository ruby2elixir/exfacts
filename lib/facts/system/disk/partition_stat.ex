defmodule ExFacts.System.Disk.PartitionStat do
  @moduledoc """
    Provides a struct to hold Partition data.

    ## Examples

        iex> p = %PartitionStat{device: "/dev/sda", mount_point: "/"}
        ...> p.mount_point
        "/"
  """
  @derive [Poison.Encoder]

  @type t :: %__MODULE__{
    device: binary,
    mount_point: binary,
    fs_type: binary,
    opts: binary
  }

  defstruct [
    device: "",
    mount_point: "",
    fs_type: "",
    opts: ""
  ]
end
