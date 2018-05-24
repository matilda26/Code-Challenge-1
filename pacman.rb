def place(x,y,f)
  if x.between?(0, 4) && y.between?(0, 4)
    @pacman = [x,y,f]
  else
    return puts "Warning! You've placed Pacman outside of the board!"
  end
end

def move
  warning = "Warning! You can't move off the board! Move ignored."
  if @pacman[2] == "NORTH"
    if @pacman[1] + 1 > 4
      return puts warning
    else
      @pacman[1] += 1
    end
  end
  if @pacman[2] == "SOUTH"
    if @pacman[1] - 1 < 0
      return puts warning
    else
      @pacman[1] -= 1
    end
  end
  if @pacman[2] == "EAST"
    if @pacman[0] + 1 > 4
      return puts warning
    else
      @pacman[0] += 1
    end
  end
  if @pacman[2] == "WEST"
    if @pacman[0] - 1 < 0
      return puts warning
    else
      @pacman[0] -= 1
    end
  end
end

def right
  if @pacman[2] == "NORTH"
    @pacman[2] ="EAST"
  elsif @pacman[2] == "EAST"
    @pacman[2] ="SOUTH"
  elsif @pacman[2] == "SOUTH"
    @pacman[2] ="WEST"
  elsif @pacman[2] == "WEST"
    @pacman[2] ="NORTH"
  end
end

def left
  if @pacman[2] == "NORTH"
    @pacman[2] = "WEST"
  elsif @pacman[2] == "WEST"
    @pacman[2] = "SOUTH"
  elsif @pacman[2] == "SOUTH"
    @pacman[2] = "EAST"
  elsif @pacman[2] == "EAST"
    @pacman[2] = "NORTH"
  end
end

def report
  puts "Output: #{@pacman.join(',')}"
end
