require_relative 'pacman'


# TEST ONE
place 0,0,"NORTH"
move
report
# Expected output "Output: 0,1,NORTH"

# TEST TWO
place 0,0,"NORTH"
left
report
# Expected output "Output: 0,0,WEST"

# TEST THREE
place 1,2,"EAST"
move
move
left
move
report
# Expected output "Output: 3,3,NORTH"

# TEST FOUR
place 5,3,"SOUTH"
# Expected output "Warning! You've placed Pacman outside of the board!"

# TEST FIVE
place 3,4,"NORTH"
move
report
# Expected output:
 # "Warning! You can't move off the board! Move ignored."
 # "Output: 3,4,NORTH"
