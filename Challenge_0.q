/

Author: Senthilvadivel S

Challenge 0: What's a numpad?

Some people might remember T9 phone inputs, in which the numbers 2 to 9 have associated letters, and 0 acts as a space. Key 2 has "abc", 3 has "def" etc:


  1   2   3
     abc def

  4   5   6
 ghi jkl mno

  7   8   9
pqrs tuv wxyz
     
      0
      _


Note that 0 is a space, not an underscore!

To get a letter you press the button a certain number of times - pressing 2 once gives "a", twice gives "b".
The input is a list of number pairs: a key and the number of times it has been pressed. For example, "7 3" would be "r". What is the message this input produces?

get input from: 

\

num:(1;2;3;4;5;6;7;8;9)!(("");("a";"b";"c");("d";"e";"f");("g";"h";"i");("j";"k";"l");("m";"n";"o");("p";"q";"r";"s");("t";"u";"v");("w";"x";"y";"z"))

val: read0 `:./Challenge_0_input.txt   /read text file for input

convert:{"J"$(" " vs x)}
get_word:{[x] :num[(x[0])][(x[1])-1]}

num_pad:{get_word[convert[val[x]]]}

x:0
word:""
while[x<(count val);word:word,num_pad[x];x+:1]

show word


/
============== Another Way ==================
list:(63 42 01 74 63 01 81 42 32 93 01 42 21 83 32 01 43 62 81 32 73 62 32 81 01 63 62 01 23 63 61 71 82 81 32 73 74 01 62 63 91)

num:(1;2;3;4;5;6;7;8;9)!(("");("a";"b";"c");("d";"e";"f");("g";"h";"i");("j";"k";"l");("m";"n";"o");("p";"q";"r";"s");("t";"u";"v");("w";"x";"y";"z"))

show num

get_word:{[x] :num[(`long$(x%10))][(x mod 10)-1]}


show "Output:"
show "",{get_word[x]}each list



=====================================
\