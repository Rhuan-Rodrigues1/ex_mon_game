defmodule ExMon.Game.Status do
  alias ExMon.Game
  def print_status_message do
    IO.puts "\n=======Jogo começou=======\n"
    IO.inspect(Game.info())
    IO.puts "====================="
  end
end
