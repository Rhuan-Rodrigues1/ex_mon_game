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

    Status.print_status_message(Game.info())
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()

    computer_move(Game.info())

  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
       :move_heal-> Actions.heal()
       move-> Actions.attack(move)

    end

    Status.print_status_message(Game.info())
  end

  defp computer_move(%{turn: :computer, status: :continue}) do
    move = {:ok, Enum.random([:move_avg, :move_rnd, :move_heal])}
    do_move(move)
  end

  defp computer_move(_), do: :ok

end
