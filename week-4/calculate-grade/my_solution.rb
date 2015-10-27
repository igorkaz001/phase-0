# Calulate a Grade

# I worked on this challenge [by myself, with: ].
#myself

# Your Solution Below

def get_grade(avg)
	if avg <= 100 and avg > 89
		return "A"
	elsif avg < 90 and avg > 79
		return "B"
	elsif avg < 80 and avg > 69
		return "C"
	elsif avg < 70 and avg > 59
		return "D"
	else avg < 60 and avg > 0
		return "F"
	end
end

