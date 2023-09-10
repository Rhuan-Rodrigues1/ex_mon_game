defmodule ExMon.Game.Actions.Attack do

    alias ExMon.Game
    alias ExMon.Game.Status

    @move_avg_range  10..25
    @move_rnd_range 10..35

    def attack_oponent(oponent, move) do
        demage = generate_demage(move)

        oponent
        |> Game.fetch_player()
        |> Map.get(:life)
        |> calculate_total_life(demage)
        |> update_life(oponent, demage)

    end

    
    defp generate_demage(:move_avg), do: Enum.random(@move_avg_range)
    defp generate_demage(:move_rnd), do: Enum.random(@move_rnd_range)
    defp calculate_total_life(life, demage) when life - demage < 0, do: 0
    defp calculate_total_life(life, demage), do: life - demage
    defp update_life(life, oponent, demage) do
        oponent
        |> Game.fetch_player()
        |> Map.put(:life, life)
        |> update_state(oponent, demage)
    end
    def update_state(player, oponent, demage) do
        Game.info()
        |> Map.put(oponent, player)
        |> Game.update()

        Status.print_demage_receive(oponent, :attack, demage)
    end
end