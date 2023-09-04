defmodule ExMon.Player do
    @moduledoc """
    Modulo para criar a struct do player
    """


    @doc """
    Variaveis de modulos para criar a struct
    """
    @required_keys  [:life, :name, :moves]
    @life 100

    @enforce_keys @required_keys
    defstruct @required_keys

    @doc """
    Criação da struct
    """
    def build(name, move_rnd, move_avg, move_heal) do
        %ExMon.Player {
            name: name,
            moves: %{
                move_rnd: move_rnd,
                move_avg: move_avg,
                move_heal: move_heal,
            },
            life: @life
        }
    end
end
