defmodule SpecMoxTest do
  use ExUnit.Case, async: true

  import Mox

  setup :verify_on_exit!

  defmock(TestModMock, for_spec: TestMod)

  test "using spec" do
    TestModMock
    |> expect(:foo, fn _x ->
      :ok
    end)

    assert :ok = TestModMock.foo(123)
  end

  test "using fun" do
    TestModMock
    |> expect(:bar, fn _x, _y ->
      :ok
    end)

    assert :ok = TestModMock.foo(123)
  end
end
