defmodule Hof do
  def repeat(a, f, t) do
    Enum.map(a, fn x -> apply_f(x, f, t) end)
  end

  defp apply_f(n, f, t) do
    Enum.reduce(1..t, n, fn(_, acc) -> f.(acc) end)
  end
end
