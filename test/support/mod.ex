defmodule TestMod do
  @spec foo(term()) :: term()
  def foo(x), do: x

  def bar(_x, y), do: y
end
