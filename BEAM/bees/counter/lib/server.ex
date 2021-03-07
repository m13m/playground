alias Counter.Core

defmodule Counter.Server do
  def run(count) do
    new_count = listen(count)
    run(new_count)
  end

  defp listen(count) do
    receive do
      {:tick, _pid} ->
        Core.inc(count)
        IO.inspect(Core.inc(count))

      {:state, pid} ->
        send(pid, {:count, count})
        count
    end
  end
end
