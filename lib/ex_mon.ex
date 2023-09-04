defmodule ExMon do

    @moduledoc """
    Modulo principal do programa
    """

  alias ExMon.Player
  alias ExMon.Game
  alias ExMon.Game.Status
  alias ExMon.Game.Actions

  def create_palyer(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    "robo"
    |> create_palyer(:soco, :chute, :cura)
    |> Game.start(player)

    Status.print_status_message()
  end

  def make_move(move) do
    Actions.fetch_move(move)
  end
end
