def overlap(rectangle1, rectangle2)
  x_range = rectangle1[0][0]...rectangle1[1][0]
  y_range = rectangle1[0][1]...rectangle1[1][1]

  rectangle2.each do |coordinate|
    if x_range.include?(coordinate[0]) && x_range.include?(coordinate[1])
      unless coordinate[0] == x_range.first || coordinate[1] == y_range.first
        return true
      end
    end
  end

  false
end
