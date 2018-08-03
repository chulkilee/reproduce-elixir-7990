defmodule WithJasonTest do
  use ExUnit.Case
  doctest WithJason

  test "greets the world" do
    assert WithJason.hello() == :world
  end
end
