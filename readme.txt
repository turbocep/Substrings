Substring method

Functionality:
  The substring method creates a hash listing how many instances of each word in the second argument's array match that of the first argument. Matches do not need to be strict, meaning if the first parameter is "hello", and the array contains ["hell", "hello", "hello"], the method should return {"hell" => 1, "hello" => 2}.

Problem-solving approach:
  Since the first parameter can contain multiple words separated by spaces within a string, those will be split into words and iterated through first. 

  Not using strict string comparisons makes this trickier. We are evaluating whether the first parameter contains a word from the dictionary (second parameter array), not the other way around. Words in the dictionary with a length longer than that of the first parameter can automatically be skipped.

Pseudocode:
  Convert first parameter into an array delimited by a space an assign to split_array.
  Iterate through every word of split_array.
    for every iteration, iterate through entire dictionary. 
    if the dictionary word is longer than the split_array word, ignore it. If it is the same length, compare it strictly. 
    If it is of lesser length, compare each slice of the split_array word (slice length is length of dictionary word) and try to find a match. If a match is found, a method is called that adds it to the return hash.
  
  Method for adding to hash:
    Check if the hash key exists. If it does, increase its counter by one. If it doesn't, create the new key with a value of 1. 