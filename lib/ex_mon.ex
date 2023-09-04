defmodule ExMon do

    @moduledoc """
    Modulo principal do programa
    """

  alias ExMon.Player
  alias ExMon.Game

  def create_palyer(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    "robo"
    |> create_palyer(:soco, :chute, :cura)
    |> Game.start(player)
  end
end
