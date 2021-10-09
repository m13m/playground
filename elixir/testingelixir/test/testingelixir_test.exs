defmodule TestingelixirTest do
  use ExUnit.Case
  doctest Testingelixir

  test "greets the world" do
    assert Testingelixir.hello() == :world
  end
end
