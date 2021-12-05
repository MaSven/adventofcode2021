defmodule AdventOfCode2021.DayThree do
  alias AdventOfCode2021.Matrix

  def calculate_power_consumption(test_input) do
    String.split(test_input, "\n", trim: true)
    |> Enum.map(&String.split(&1, "", trim: true))
    |> Matrix.transpose()
    |> Enum.map(&Enum.frequencies/1)
    |> caluclate_gamma_epsilon()
  end

  def caluclate_gamma_epsilon(frequencies) do
    gamma(frequencies) * epsilon(frequencies)
  end

  def epsilon(frequencies) do
    Enum.map(frequencies, fn %{"0" => zeroes, "1" => ones} ->
      if(zeroes > ones, do: "1", else: "0")
    end)
    |> Enum.join()
    |> Integer.parse(2)
    |> elem(0)
  end

  def gamma(freuencies) do
    Enum.map(freuencies, fn %{"0" => zeroes, "1" => ones} ->
      if(zeroes > ones, do: "0", else: "1")
    end)
    |> Enum.join()
    |> Integer.parse(2)
    |> elem(0)
  end
end
