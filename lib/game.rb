class Game < Board
  def position_taken?(input)
    @board[input] != ' '
  end

  def valid_move?(input)
    input.between?(0, 8) && !position_taken?(input)
  end

  def turn
    @current_player = @turn_count.odd? ? @player1 : @player2
    print "#{@current_player.name}, Please choose a number between 1-9: "
    position = gets.chomp.to_i
    position -= 1
    if valid_move?(position)
      @board[position] = @current_player.sign
    else
      puts 'invalid position or input'
      turn
    end
  end

  def play
    @turn_count = 0
    until over?
      @turn_count += 1
      turn
      puts '#################'
      display_board
    end
    print 'Game Over '

    if won?
      puts "Congratulations #{@current_player.name} you are the winner."
    else
      puts 'Its a draw, better luck next time !!'
    end
  end
end
