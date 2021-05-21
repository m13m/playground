defmodule MonadTest do
  use ExUnit.Case
  doctest Monad

  test "greets the world" do
    assert Monad.hello() == :world
  end
end
