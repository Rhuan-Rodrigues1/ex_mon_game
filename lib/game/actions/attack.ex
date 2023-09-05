defmodule ExMon.Game.Actions.Attack do

    @move_avg_range  10..25
    @move_rnd_range 10..35

    def attack_oponnent(oponnent, move) do
        demage = generate_demage(move)
    end

    defp generate_demage(:move_avg), do: Enum.random(@move_avg_range)
    defp generate_demage(:move_rnd), do: Enum.random(@move_rnd_range)
end