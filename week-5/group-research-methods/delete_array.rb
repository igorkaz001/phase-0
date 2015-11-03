# arr1 = ["dog","word","cat","seven"]
# def my_array_deletion_method!(source, thing_to_delete)
#   source.reject! {|x| x == thing_to_delete}
#  p source
# end
 

# my_array_deletion_method!(arr1, "cat")

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
def my_hash_deletion_method!(source, thing_to_delete)
	source.reject! {|x, n|  x == thing_to_delete}
	return source
end



my_hash_deletion_method!(my_family_pets_ages, "George")