defmodule AdventOfCode2021.DayOne do
  def group_measurements(input) do
    String.split(input, "\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk_every(3,1, :discard)
    |> Enum.reduce([], fn line, acc -> [Enum.sum(line)|acc] end)
    |> Enum.reverse()
    |> count_measurements(0, nil)
  end



  def count_group([number | groups], acc) do
    number = String.to_integer(number)
    Enum.reduce(groups,acc, fn group,out_acc ->
      Map.update(out_acc, group, number, fn value -> value + number end)
    end)
  end

  def count_measurements(input) when is_binary(input) do
    String.split(input, "\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> count_measurements(0, nil)
  end

  def count_measurements([head | tail], 0, nil) do
    count_measurements(tail, 0, head)
  end

  def count_measurements([head | tail], state, last_statement) do
    count_measurements(tail, state + calc_state(head, last_statement), head)
  end

  def count_measurements([], state, _last_statement) do
    state
  end

  def calc_state(next_element, previous_element),
    do: if(next_element > previous_element, do: 1, else: 0)
end
