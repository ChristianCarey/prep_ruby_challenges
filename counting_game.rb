def counting_game(players, max_number)
  count = 1
  person = 1
  direction = :up

  until count == max_number + 1
    puts "count: #{count}"
    puts "person: #{person}"

    if count % 7 == 0
      direction == :up ? direction = :down : direction = :up
    end

    if direction == :up
      if person == players
        person = 0
      else 
        person += 1
      end

      person += 1 if count % 11 == 0
    else 
      if person == 0
        person = players
      else
        person -= 1
      end

      person -= 1 if count % 11 == 0
    end

    count += 1
  end
end