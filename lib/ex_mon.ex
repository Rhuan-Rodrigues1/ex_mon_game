defmodule ExMon do
  
    @moduledoc """
    Modulo principal do programa
    """

  alias ExMon.Player

  
  def create_palyer(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end
end
