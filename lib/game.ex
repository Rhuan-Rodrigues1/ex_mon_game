defmodule ExMon.Game do
    @moduledoc """
        Modulo para criar estados para o nosso jogo usando Agents.
    """
    use Agent

    def start(computer, player) do
        initial_value = %{computer: computer, player: player,  turn: :player, status: :started}
        Agent.start_link(fn -> initial_value end, name: __MODULE__)
    end
end