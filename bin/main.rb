require_relative '../lib/board.rb'

module User
    def self.display(arr)
        line_width = 50
    puts "#{arr[1]} | #{arr[2]} | #{arr[3]} ".center line_width
    puts "#{arr[4]} | #{arr[5]} | #{arr[6]} ".center line_width
    puts "#{arr[7]} | #{arr[8]} | #{arr[9]} ".center line_width
    end
end
puts "Enter your name"
name = gets.chomp.capitalize

puts "What tools would you like to choose, 'X' or 'O'?"
tool = gets.chomp.upcase
until tool=='X' || tool=='O'
    puts "Please pick either 'X' or 'O'"
    tool = gets.chomp.upcase
end

player1 = Player.new(name, tool)

puts "Next player, please enter your name"
name2 = gets.chomp.capitalize
until name2!=name
    puts "Please pick another name,that name is taken"
    name2 = gets.chomp.upcase
end

tool2 = tool=='X'? "O" : "X"

player2 = Player.new(name2, tool2)
played=Game.new
i=0
while i<9
    i+=1
puts "#{player1.name}, please pick a position for your move"
move1=gets.chomp.to_i
played.play(move1,tool)
User.display(played.board)
puts "#{player2.name}, please pick a position for your move"
move2=gets.chomp.to_i
played.play(move2,tool2)
User.display(played.board)

end
