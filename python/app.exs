defmodule TestServer do
  use GenServer

  def start_link(:ok)  do
    GenServer.start_link(__MODULE__, :ok, [], :ok)
  end

  def handle_call(:call, _from, []) do
    {:reply, :ok}
  end

  def handle_cast(:cast, _from, []) do
    {:noreply, :ok}
  end

  def handle_info(:info, _from, []) do
    {:noreply, :ok}
  end
end
