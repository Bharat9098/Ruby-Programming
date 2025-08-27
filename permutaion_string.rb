def permutations(str)
  return [str] if str.length <= 1

  result = []

  str.chars.each_with_index do |ch, i|
    # बाकी के characters निकालो
    remaining = str[0...i] + str[i+1..-1]

    # recursive call
    permutations(remaining).each do |perm|
      result << ch + perm
    end
  end

  result
end

puts permutations("abc").inspect


🔹 Step 1: str.chars.each_with_index

ye string ko character array me todta hai aur har character ko index ke sath deta hai.

"abc".chars → ["a","b","c"]

so loop chalega:

ch="a", i=0

ch="b", i=1

ch="c", i=2

🔹 Step 2: remaining = str[0...i] + str[i+1..-1]

iska matlab hai: current character ch hata ke baaki string bachi hui.

agar ch="a", i=0
→ remaining = str[0...0] + str[1..-1]
→ "" + "bc" = "bc"

agar ch="b", i=1
→ remaining = str[0...1] + str[2..-1]
→ "a" + "c" = "ac"

agar ch="c", i=2
→ remaining = str[0...2] + str[3..-1]
→ "ab" + "" = "ab"

🔹 Step 3: recursive call

permutations(remaining) call hota hai.
jaise "abc" ke case me:

ch="a" ke liye permutations("bc") nikalega → ["bc","cb"]

fir har permutation me ch prepend karenge:

"a" + "bc" → "abc"
"a" + "cb" → "acb"

🔹 Step 4: result me dalna

ye line:

result << ch + perm


har final permutation result array me store kar deti hai.

🔥 Full dry run example: "abc"

Loop 1: ch="a" → remaining "bc"
→ permutations("bc") = ["bc", "cb"]
→ add ["abc", "acb"]

Loop 2: ch="b" → remaining "ac"
→ permutations("ac") = ["ac", "ca"]
→ add ["bac", "bca"]

Loop 3: ch="c" → remaining "ab"
→ permutations("ab") = ["ab", "ba"]
→ add ["cab", "cba"]

✅ final result = ["abc", "acb", "bac", "bca", "cab", "cba"]

bhai ab bata, kya me isko diagram flow bana ke samjhau (tree structure), jaise recursion tree hota hai?