defmodule WebSocket do
  use ElixirScript.FFI

  defexternal create(url)
end
