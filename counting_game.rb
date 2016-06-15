class Counting_game
  attr_accessor :count, :person, :direction, :players, :direction
 
  def initialize(players = 10, max_number = 100)
    @players = players
    @max_number = max_number
    @count = 1
    @person = 1
    @direction = :up
  end

  def switch_direction
    @direction == :up ? @direction = :down : @direction = :up
  end

  def next_person
    if @direction == :up
      if @person == @players
        @person = 1
      else 
        @person += 1
      end
    else
      if @person == 1
        @person = @players
      else
        @person -= 1
      end
    end
  end

  def run
    until @count == @max_number + 1
      puts "count: #{@count}"
      puts "person: #{@person}"

      if @count % 7 == 0
        switch_direction
      end

      next_person if @count % 11 == 0
      next_person

      @count += 1
    end
  end
end
