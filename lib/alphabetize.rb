def alphabetize(arr)
  arr.sort! do |a, b|
    word1 = a.split(" ")[0]
    word2 = b.split(" ")[0]
    index = 0
    while word1 == word2
      index += 1
      word1 = a.split(" ")[index]
      word2 = b.split(" ")[index]
    end
    test1 = word1.split("")
    test2 = word2.split("")
    counter = 0
    check = 0
    loop do
      check = compare_chars(test1[counter], test2[counter])
      break if check == 1 || check == -1
      counter += 1
    end
    check
  end
end

def esperanto_alphabet_order(char)
  esperanto_array = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  return esperanto_array.index(char)
end

def compare_chars(a, b)
  esperanto_alphabet_order(a) <=> esperanto_alphabet_order(b)
end