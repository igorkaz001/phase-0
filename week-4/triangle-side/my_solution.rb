# I worked on this challenge [by myself, with: ].
# myself

# Your Solution Below

def valid_triangle?(a, b, c)
  if c < b + a && b < c + a && a < b + c
  	return true
  else
  	return false
end
end

