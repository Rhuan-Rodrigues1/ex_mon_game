defmodule ExMon.Game.Status do
  
  def print_status_message(%{status: :started} = info) do
    IO.puts "\n======= Jogo começou =======\n"
    IO.inspect(info)
    IO.puts "====================="
  end

  def print_status_message(%{status: :continue, turn: player} = info) do
    IO.puts "\n======= É a vez do #{player} =======\n"
    IO.inspect(info)
    IO.puts "====================="
  end

  def print_status_message(%{status: :game_over} = info) do
    IO.puts "\n======= O jogo terminou =======\n"
    IO.inspect(info)
    IO.puts "====================="
  end

  def print_wrong_move_message(move) do
    IO.puts "\n======= Movimento inválido: #{move} =======\n"
  end
  
  def print_demage_receive(:computer, :attack, demage) do
    IO.puts "\n=======  Player atacou: #{demage} de dano =======\n"
  end

  def print_heal_receive(player, :heal, heal) do
    IO.puts "\n======= #{player} se curou: #{heal} de dano =======\n"
  end
end
