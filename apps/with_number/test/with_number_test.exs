defmodule WithNumberTest do
  use ExUnit.Case
  doctest WithNumber

  test "greets the world" do
    assert WithNumber.hello() == :world
  end
end
