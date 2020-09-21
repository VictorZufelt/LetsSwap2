defmodule Json do
  use ElixirScript.FFI

  defexternal parse(s)
end
