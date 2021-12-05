defmodule AdventOfCode2021.Matrix do


  def transpose(rows) do
	List.zip(rows)
    |> Enum.map(&Tuple.to_list/1)
  end
end
