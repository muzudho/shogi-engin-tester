defmodule EngineTesterTest do
  use ExUnit.Case
  doctest EngineTester

  test "greets the world" do
    assert EngineTester.hello() == :world
  end
end
