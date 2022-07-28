def encrypt(text, permutation_level = -3)
  # define an array with the 26 letters of the alphabet (in capital letters)
  alphabet = ("A".."Z").to_a
  # split the text in the 'letters' array
  split_text = text.upcase.split("")
  # iterate over letters from text
  encrypted_text = split_text.map do |letter|
    # test its inclusion in the alphabet
    index = alphabet.index(letter)
    # map the letter to its left-shift or to itself
    # use modulo to keep make sure the index is valid (positive) and the first three letters are included
    index.nil? ? letter : alphabet[(index + permutation_level) % 26]
  end
  # join the mapped array and return it
  encrypted_text.join
end

encrypted_text = "FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB."

# define a method to decrypt text

def decrypt(text)
  encrypt(text, 3)
end

puts decrypt(encrypted_text)