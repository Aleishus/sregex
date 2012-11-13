# vim:set ft= ts=4 sw=4 et fdm=marker:

use t::SRegex 'no_plan';

run_tests();

__DATA__

=== TEST 1: testinput1:3816
--- re: [\z\C]
--- s eval: "C "



=== TEST 2: testinput1:3819
--- re: \M
--- s eval: "M "



=== TEST 3: testinput1:3822
--- re: (a+)*b
--- s eval: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa "



=== TEST 4: testinput1:3831
--- re: ����[�-��-�]+
--- s eval: "�����"



=== TEST 5: testinput1:3832
--- re: ����[�-��-�]+
--- s eval: "�����"



=== TEST 6: testinput1:3833
--- re: ����[�-��-�]+
--- s eval: "�����"



=== TEST 7: testinput1:3834
--- re: ����[�-��-�]+
--- s eval: "�����"



=== TEST 8: testinput1:3863
--- re: ^
--- s eval: "a\nb\nc\n"



=== TEST 9: testinput1:3864
--- re: ^
--- s eval: "\ "



=== TEST 10: testinput1:3880
--- re: [[,abc,]+]
--- s eval: "abc]"



=== TEST 11: testinput1:3881
--- re: [[,abc,]+]
--- s eval: "a,b]"



=== TEST 12: testinput1:3882
--- re: [[,abc,]+]
--- s eval: "[a,b,c]  "



=== TEST 13: testinput1:3899
--- re: a*b*\w
--- s eval: "aaabbbb"



=== TEST 14: testinput1:3900
--- re: a*b*\w
--- s eval: "aaaa"



=== TEST 15: testinput1:3901
--- re: a*b*\w
--- s eval: "a"



=== TEST 16: testinput1:3904
--- re: a*b?\w
--- s eval: "aaabbbb"



=== TEST 17: testinput1:3905
--- re: a*b?\w
--- s eval: "aaaa"



=== TEST 18: testinput1:3906
--- re: a*b?\w
--- s eval: "a"



=== TEST 19: testinput1:3909
--- re: a*b{0,4}\w
--- s eval: "aaabbbb"



=== TEST 20: testinput1:3910
--- re: a*b{0,4}\w
--- s eval: "aaaa"



=== TEST 21: testinput1:3911
--- re: a*b{0,4}\w
--- s eval: "a"



=== TEST 22: testinput1:3914
--- re: a*b{0,}\w
--- s eval: "aaabbbb"



=== TEST 23: testinput1:3915
--- re: a*b{0,}\w
--- s eval: "aaaa"



=== TEST 24: testinput1:3916
--- re: a*b{0,}\w
--- s eval: "a"



=== TEST 25: testinput1:3919
--- re: a*\d*\w
--- s eval: "0a"



=== TEST 26: testinput1:3920
--- re: a*\d*\w
--- s eval: "a "



=== TEST 27: testinput1:3923
--- re: a*b *\w
--- s eval: "a "



=== TEST 28: testinput1:3930
--- re: a* b *\w
--- s eval: "a "



=== TEST 29: testinput1:3933
--- re: ^\w+=.*(\\\n.*)*
--- s eval: "abc=xyz\\\npqr"



=== TEST 30: testinput1:3976
--- re: ^(a()*)*
--- s eval: "aaaa"



=== TEST 31: testinput1:3979
--- re: ^(?:a(?:(?:))*)*
--- s eval: "aaaa"



=== TEST 32: testinput1:3982
--- re: ^(a()+)+
--- s eval: "aaaa"



=== TEST 33: testinput1:3985
--- re: ^(?:a(?:(?:))+)+
--- s eval: "aaaa"



=== TEST 34: testinput1:3993
--- re: (a|)*\d
--- s eval: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 35: testinput1:3994
--- re: (a|)*\d
--- s eval: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa4"
--- cap: (0, 61) (59, 60)



=== TEST 36: testinput1:4001
--- re: (?:a|)*\d
--- s eval: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 37: testinput1:4002
--- re: (?:a|)*\d
--- s eval: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa4"



=== TEST 38: testinput1:4020
--- re: (.*(.)?)*
--- s eval: "abcd"
--- cap: (0, 4) (0, 4)



=== TEST 39: testinput1:4032
--- re: [[:abcd:xyz]]
--- s eval: "a]"



=== TEST 40: testinput1:4033
--- re: [[:abcd:xyz]]
--- s eval: ":] "



=== TEST 41: testinput1:4036
--- re: [abc[:x\]pqr]
--- s eval: "a"



=== TEST 42: testinput1:4037
--- re: [abc[:x\]pqr]
--- s eval: "["



=== TEST 43: testinput1:4038
--- re: [abc[:x\]pqr]
--- s eval: ":"



=== TEST 44: testinput1:4039
--- re: [abc[:x\]pqr]
--- s eval: "]"



=== TEST 45: testinput1:4040
--- re: [abc[:x\]pqr]
--- s eval: "p    "



=== TEST 46: testinput1:4043
--- re: .*[op][xyz]
--- s eval: "fooabcfoo"



=== TEST 47: testinput1:4078
--- re: [\x00-\xff\s]+
--- s eval: "\x0a\x0b\x0c\x0d"



=== TEST 48: testinput1:4081
--- re: ^\c
--- s eval: "?"



=== TEST 49: testinput1:4090
--- re: [^a]*
--- s eval: "12abc"



=== TEST 50: testinput1:4091
--- re: [^a]*
--- s eval: "12ABC"



