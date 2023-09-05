defmodule ExMon.Game do
    @moduledoc """
        Modulo para criar estados para o nosso jogo usando Agents.
    """
    use Agent

    def start(computer, player) do
        initial_value = %{computer: computer, player: player,  turn: :player, status: :started}
        Agent.start_link(fn -> initial_value end, name: __MODULE__)
    end

    def info do
        Agent.get(__MODULE__, & &1)
    end

    def player, do: Map.get(info(), :player)
    def turn, do: Map.get(info(), :turn)
end
