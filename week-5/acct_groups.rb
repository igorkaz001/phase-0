=begin
Pseudocode:
input: array containing the names of people
output: sub arrays each reperesting an separate group of people
steps: -divide the big array into smaller sub-arrays of 4-5 people each
print the sub arrays
=end

# Initial Solution:
students = ["Syema Ailia", 
"Alan Alcesto", 
"Daniel Andersen", 
"James Artz", 
"Darius Atmar", 
"Brian Bensch", 
"Nicola Beuscher", 
"Kris Bies", 
"Alexander Blair", 
"Logan Bresnahan", 
"William Brinkert", 
"Un Choi", 
"Scott Chou", 
"Bernice Anne W Chua", 
"Abraham Clark", 
"Jon Clayton", 
"Kevin Corso", 
"Jacob Crofts", 
"Amaar Fazlani", 
"Solomon Fernandez", 
"Edward Gemson", 
"Jamar Gibbs", 
"Chris Gomes", 
"Will Granger", 
"Christopher M. Guard", 
"Ryan Ho", 
"Igor Kazimirov", 
"Walter Kerr", 
"Karla King", 
"Becky Lehmann", 
"Malia Lehrer", 
"Carolina Medellin", 
"Timothy Meixell", 
"Chris Miklius", 
"Joshua Monzon", 
"Shea Munion", 
"Bryan Munroe", 
"Trevor Newcomb", 
"Aleksandra Nowak", 
"Fatma Ocal", 
"Van Phan", 
"Luis Fernando Plaz", 
"Natalie Polen", 
"Alicia Quezada", 
"Jessie Richardson", 
"Nimi Samocha", 
"Zach Schatz", 
"Tal Schwartz", 
"Pratik Shah", 
"Josh Shin", 
"Parminder Singh", 
"Shawn Spears", 
"Sasha Tailor", 
"Nil Thacker", 
"Natasha Thapliyal", 
"Sabrina Unrein", 
"Brian Wagner", 
"Clinton Weber", 
"Gregory Wehmeier", 
"Michael Whelpley", 
"Alexander Williams", 
"Peter N Wood", 
"Ryan Zell"]

def separator (arr)
arr.each_slice(5) {|a| p a}
end
p separator(students)

# Refactor:

=begin
iterate over the array and insert  a number 1-5 after/before each name or even make a separate array with corresponding number for each student
then flatten the array
then convert it into hashes based on values (1-5), so a name would correspond to a number. The names would be keys and "group number" would be the value, becuse there are duplicates.
use Hash[*students(group_numbers)] syntax to combine the 2 arrays (or take the single array) and turn it into a hash. 

=end

=begin
Reflect:
What was the most interesting and most difficult part of this challenge?
The most difficult part was adding complexity to the program. For example I wanted to assign group names or numbers to the batches of students, but wasn't able to finish that part. 

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, I am improving since I get practice from almost every challaenge. In this instance, I actually wrote a separate set of to-do steps for refactoring. Unfortunately I wasnt able to implement that

Was your approach for automating this task a good solution? What could have made it even better?
I feel my approach was good enough. Not sure what would have made it better.

What data structure did you decide to store the accountability groups in and why?
I decided to use arrays or sub-arrays for sake of simplicity. In the final product, hashes would be better suited for this task. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned there are many possibilities on how to improve the code or add advanced features, but my limited knowldege of ruby hampered my progress. I learned a few new methods such as .map {| |  }, .each_slice, .zip, .flatten, .collect. Most of these methods were not used but I went through them during research. 

=end