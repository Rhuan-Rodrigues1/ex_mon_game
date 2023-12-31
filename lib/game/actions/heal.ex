defmodule ExMon.Game.Actions.Heal do

    alias ExMon.Game
    alias ExMon.Game.Status

    @life_power  10..25

    def heal_life(player) do
        player
        |> Game.fetch_player()
        |> Map.get(:life)
        |> calculate_total_life()
        |> set_life(player)
    end

    defp calculate_total_life(life), do: Enum.random(@life_power) + life

    defp set_life(life, player) when life > 100, do: update_life(player, 100)
    defp set_life(life, player), do: update_life(player, life)

    def update_life(life, player) do
        player
        |> Game.fetch_player()
        |> Map.put(:life, life)
        |> update_game(player, life)
    end

    defp update_game(player_data, player, life) do
        Game.info()
        |> Map.put(player, player_data)
        |> Game.update()

        Status.print_heal_receive(player, :heal, life)
    end
end