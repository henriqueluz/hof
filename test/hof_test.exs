defmodule HofTest do
  use ExUnit.Case
  doctest Hof

  test "should execute once" do
    sample = [1, 2, 3]
    f = fn x -> x * 2 end
    assert Hof.repeat(sample, f, 2) == [4, 8, 12]
  end
end
