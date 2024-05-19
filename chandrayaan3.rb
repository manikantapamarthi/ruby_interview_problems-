class Spacecraft
  def initialize(starting_position, initial_direction)
    @position = starting_position
    @direction = initial_direction
  end

  def move_forward
    case @direction
    when 'N'
      @position[1] += 1
    when 'S'
      @position[1] -= 1
    when 'E'
      @position[0] += 1
    when 'W'
      @position[0] -= 1
    when 'U'
      @position[2] += 1
    when 'D'
      @position[2] -= 1
    end
  end

  def turn_right
    case @direction
    when 'N'
      @direction = 'E'
    when 'S'
      @direction = 'W'
    when 'E'
      @direction = 'S'
    when 'W'
      @direction = 'N'
    end
  end

  def turn_up
    @direction = 'U' if ['N', 'S'].include?(@direction)
  end

  def turn_left
    turn_right
    turn_right
    turn_right
  end

  def move_backward
    turn_left
    move_forward
    turn_left
  end

  def turn_down
    @direction = 'D' if ['N', 'S'].include?(@direction)
  end

  def execute_commands(commands)
    commands.each do |command|
      case command
      when 'f'
        move_forward
      when 'b'
        move_backward
      when 'r'
        turn_right
      when 'l'
        turn_left
      when 'u'
        turn_up
      when 'd'
        turn_down
      end
    end
  end

  def final_position_and_direction(commands)
    execute_commands(commands)
    [@position, @direction]
  end
end

# Example usage:
starting_position = [0, 0, 0]
initial_direction = 'N'
commands = ['f', 'r', 'u', 'b', 'l']

spacecraft = Spacecraft.new(starting_position, initial_direction)
final_position, final_direction = spacecraft.final_position_and_direction(commands)

puts "Final Position: #{final_position}"
puts "Final Direction: #{final_direction}"
