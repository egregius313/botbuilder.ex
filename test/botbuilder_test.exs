defmodule BotBuilderTest do
  use ExUnit.Case
  doctest BotBuilder

  test "greets the world" do
    assert BotBuilder.hello() == :world
  end
end
