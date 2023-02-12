# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	sides = [a,b,c]

	# A triangle cannot have sides which are equal to or less than 0 in length
	if sides.min <= 0
		raise TriangleError
	end

	# A triangle cannot have the sum of two sides being equal to or less
	# than the length of the third side. Eg. 2, 7, 12
	if sides.sort[0] + sides.sort[1] <= sides.sort[2]
	  raise TriangleError
	end

  case sides.uniq.count
	when 1
		return :equilateral
	when 2
		return :isosceles
	when 3
		return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
