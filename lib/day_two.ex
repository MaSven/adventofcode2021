defmodule AdventOfCode2021.DayTwo do
  def calculate_submarine_position(test_input) do
    map=
      String.split(test_input,"\n",trim: true)
      |> Enum.reduce(%{horizontal: 0,depth: 0},fn
      <<"forward ",number::binary>>,acc -> %{horizontal: acc.horizontal+String.to_integer(number),depth: acc.depth}
      <<"down ",number::binary>>,acc -> %{horizontal: acc.horizontal,depth: acc.depth+String.to_integer(number)}
      <<"up ",number::binary>>,acc -> %{horizontal: acc.horizontal,depth: acc.depth-String.to_integer(number)}
    end)
    map.horizontal*map.depth
  end

  def calculate_submarine_aim(test_input) do
	aim=String.split(test_input,"\n",trim: true)
    |>Enum.map(fn

      "forward "<> number -> {:forward,String.to_integer(number)}
      "down "<> number -> {:down,String.to_integer(number)}
      "up " <> number -> {:up,String.to_integer(number)}
    end)
    |> Enum.reduce({0,0,0},fn
      {:forward,number},{depth,hori,aim}-> {depth+(aim*number),hori+number,aim}
      {:down,number},{depth,hori,aim} -> {depth,hori,aim+number}
      {:up,number},{depth,hori,aim} -> {depth,hori,aim-number}
    end)
    elem(aim,0)*elem(aim,1)
  end
end
