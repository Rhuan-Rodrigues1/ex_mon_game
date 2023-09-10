defmodule ExMon.Game.Status do
  alias ExMon.Game
  def print_status_message do
    IO.puts "\n======= Jogo começou =======\n"
    IO.inspect(Game.info())
    IO.puts "====================="
  end

  def print_wrong_move_message(move) do
    IO.puts "\n======= Movimento inválido: #{move} =======\n"
  end
  
  def print_demage_receive(:computer, :attack, demage) do
    IO.puts "\n======= Player atacou: #{demage} de dano =======\n"
  end
end
