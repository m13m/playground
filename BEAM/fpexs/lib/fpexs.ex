
defmodule MySet do
  defstruct items: []

  @spec push(%{:items => any, optional(any) => any}, any) :: %{
          :items => any,
          optional(any) => any
        }
  def push(set = %MySet{}, item) do

    if Enum.member?(set, item) do
      set
    else
      %{set | items: items ++ [item]}
    end
  end

  end
