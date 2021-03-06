defmodule ExFacts.System.CPU.InfoStat do
  @moduledoc """
    Provides a struct to hold CPU data.

    ## Examples

        iex> d = %ExFacts.System.CPU.InfoStat{cpu: 0, model_name: "AuthenticAMD"}
        ...> d.model_name
        "AuthenticAMD"
  """
  @derive [Poison.Encoder]

  @type t :: %__MODULE__{
    cpu: integer,
    vendor_id: binary,
    family: binary,
    model: binary,
    stepping: integer,
    physical_id: binary,
    core_id: binary,
    cores: integer,
    model_name: binary,
    mhz: float,
    cache_size: integer,
    flags: [binary],
    microcode: binary
    }

  defstruct [
    cpu: 0,
    vendor_id: "",
    family: "",
    model: "",
    stepping: 0,
    physical_id: "",
    core_id: "",
    cores: 0,
    model_name: "",
    mhz: 0.0,
    cache_size: 0,
    flags: [""],
    microcode: ""
  ]
end
