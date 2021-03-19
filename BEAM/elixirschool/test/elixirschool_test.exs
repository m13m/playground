defmodule ElixirschoolTest do
  use ExUnit.Case
  doctest Elixirschool

  test "greets the world" do
    assert Elixirschool.hello() == :world
  end
end
