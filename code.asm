--- FUNCTION SOURCE (test) id{0,0} ---
( obj ) {
  return obj.prop + obj.prop;
}

--- END ---
--- Raw source ---
( obj ) {
  return obj.prop + obj.prop;
}


--- Optimized code ---
optimization_id = 0
source_position = 28
kind = OPTIMIZED_FUNCTION
name = test
stack_slots = 1
Instructions (size = 158)
0x1f185f166360     0  55             push rbp
0x1f185f166361     1  4889e5         REX.W movq rbp,rsp
0x1f185f166364     4  56             push rsi
0x1f185f166365     5  57             push rdi
0x1f185f166366     6  4883ec08       REX.W subq rsp,0x8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
0x1f185f16636a    10  488b45f8       REX.W movq rax,[rbp-0x8]    ;; debug: position 28
                  ;;; <@3,#1> gap
0x1f185f16636e    14  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@11,#8> gap
0x1f185f166372    18  488bf0         REX.W movq rsi,rax
                  ;;; <@12,#10> stack-check
0x1f185f166375    21  493ba550070000 REX.W cmpq rsp,[r13+0x750]
0x1f185f16637c    28  7305           jnc 35  (0x1f185f166383)
0x1f185f16637e    30  e83dd2fcff     call StackCheck  (0x1f185f1335c0)    ;; code: BUILTIN
                  ;;; <@14,#10> lazy-bailout
                  ;;; <@15,#10> gap
0x1f185f166383    35  488b5d10       REX.W movq rbx,[rbp+0x10]
                  ;;; <@16,#12> check-non-smi
0x1f185f166387    39  f6c301         testb rbx,0x1           ;; debug: position 47
0x1f185f16638a    42  0f8440000000   jz 112  (0x1f185f1663d0)
                  ;;; <@18,#13> check-maps
0x1f185f166390    48  49ba7943112337290000 REX.W movq r10,0x293723114379    ;; object: 0x293723114379 <Map(elements=3)>
0x1f185f16639a    58  4c3953ff       REX.W cmpq [rbx-0x1],r10
0x1f185f16639e    62  0f8531000000   jnz 117  (0x1f185f1663d5)
                  ;;; <@20,#14> load-named-field
0x1f185f1663a4    68  488b4317       REX.W movq rax,[rbx+0x17]
                  ;;; <@22,#18> check-instance-type
0x1f185f1663a8    72  4c8b50ff       REX.W movq r10,[rax-0x1]    ;; debug: position 56
0x1f185f1663ac    76  41f6420b80     testb [r10+0xb],0x80
0x1f185f1663b1    81  0f8523000000   jnz 122  (0x1f185f1663da)
                  ;;; <@23,#18> gap
0x1f185f1663b7    87  488b75e8       REX.W movq rsi,[rbp-0x18]
0x1f185f1663bb    91  488bd0         REX.W movq rdx,rax
                  ;;; <@24,#20> string-add
0x1f185f1663be    94  e8ddfbffff     call 0x1f185f165fa0     ;; code: STUB, StringAddStub, minor: 0
                  ;;; <@26,#20> lazy-bailout
                  ;;; <@28,#22> return
0x1f185f1663c3    99  488be5         REX.W movq rsp,rbp
0x1f185f1663c6   102  5d             pop rbp
0x1f185f1663c7   103  c21000         ret 0x10
0x1f185f1663ca   106  660f1f440000   nop
                  ;;; -------------------- Jump table --------------------
                  ;;; deoptimize at <0:19> check-non-smi: Smi
0x1f185f1663d0   112  e835fcc9ff     call 0x1f185ee0600a     ;; deoptimization bailout 1
                  ;;; deoptimize at <0:19> check-maps: wrong map
0x1f185f1663d5   117  e83afcc9ff     call 0x1f185ee06014     ;; deoptimization bailout 2
                  ;;; deoptimize at <0:28> check-instance-type: wrong instance type
0x1f185f1663da   122  e83ffcc9ff     call 0x1f185ee0601e     ;; deoptimization bailout 3
0x1f185f1663df   127  90             nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 5)
 index  ast id    argc     pc  commands
     0       3       0     35  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=1}
                               STACK_SLOT {input=-2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=0}
     1       3       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=1}
                               STACK_SLOT {input=-2}
                               REGISTER {input=rbx}
                               STACK_SLOT {input=0}
     2       3       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=1}
                               STACK_SLOT {input=-2}
                               REGISTER {input=rbx}
                               STACK_SLOT {input=0}
     3       3       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=1}
                               STACK_SLOT {input=-2}
                               REGISTER {input=rbx}
                               STACK_SLOT {input=0}
     4       3       0     99  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=1}
                               STACK_SLOT {input=-2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=0}

Safepoints (size = 30)
0x1f185f166383    35  1 (sp -> fp)       0
0x1f185f1663c3    99  1 (sp -> fp)       4

RelocInfo (size = 246)
0x1f185f16636a  position  (28)
0x1f185f16636a  comment  (;;; <@0,#0> -------------------- B0 --------------------)
0x1f185f16636a  comment  (;;; <@2,#1> context)
0x1f185f16636e  comment  (;;; <@3,#1> gap)
0x1f185f166372  comment  (;;; <@10,#8> -------------------- B1 --------------------)
0x1f185f166372  comment  (;;; <@11,#8> gap)
0x1f185f166375  comment  (;;; <@12,#10> stack-check)
0x1f185f16637f  code target (BUILTIN)  (0x1f185f1335c0)
0x1f185f166383  comment  (;;; <@14,#10> lazy-bailout)
0x1f185f166383  comment  (;;; <@15,#10> gap)
0x1f185f166387  comment  (;;; <@16,#12> check-non-smi)
0x1f185f166387  position  (47)
0x1f185f166390  comment  (;;; <@18,#13> check-maps)
0x1f185f166392  embedded object  (0x293723114379 <Map(elements=3)>)
0x1f185f1663a4  comment  (;;; <@20,#14> load-named-field)
0x1f185f1663a8  comment  (;;; <@22,#18> check-instance-type)
0x1f185f1663a8  position  (56)
0x1f185f1663b7  comment  (;;; <@23,#18> gap)
0x1f185f1663be  comment  (;;; <@24,#20> string-add)
0x1f185f1663bf  code target (STUB)  (0x1f185f165fa0)
0x1f185f1663c3  comment  (;;; <@26,#20> lazy-bailout)
0x1f185f1663c3  comment  (;;; <@28,#22> return)
0x1f185f1663d0  comment  (;;; -------------------- Jump table --------------------)
0x1f185f1663d0  comment  (;;; deoptimize at <0:19> check-non-smi: Smi)
0x1f185f1663d1  runtime entry  (deoptimization bailout 1)
0x1f185f1663d5  comment  (;;; deoptimize at <0:19> check-maps: wrong map)
0x1f185f1663d6  runtime entry  (deoptimization bailout 2)
0x1f185f1663da  comment  (;;; deoptimize at <0:28> check-instance-type: wrong instance type)
0x1f185f1663db  runtime entry  (deoptimization bailout 3)
0x1f185f1663e0  comment  (;;; Safepoint table.)

--- End code ---
--- FUNCTION SOURCE () id{1,0} ---
"use strict";

function test( obj ) {
  return obj.prop + obj.prop;
}

var a = { prop: 'a' }, i = 0;

while ( i++ < 10000000 ) {
  test( a );
}

--- END ---
--- FUNCTION SOURCE (test) id{1,1} ---
( obj ) {
  return obj.prop + obj.prop;
}

--- END ---
INLINE (test) id{1,1} AS 1 AT <0:131>
--- Raw source ---
"use strict";

function test( obj ) {
  return obj.prop + obj.prop;
}

var a = { prop: 'a' }, i = 0;

while ( i++ < 10000000 ) {
  test( a );
}


--- Optimized code ---
optimization_id = 1
source_position = 0
kind = OPTIMIZED_FUNCTION
stack_slots = 5
Instructions (size = 789)
0x1f185f166700     0  55             push rbp
0x1f185f166701     1  4889e5         REX.W movq rbp,rsp
0x1f185f166704     4  56             push rsi
0x1f185f166705     5  57             push rdi
0x1f185f166706     6  4883ec28       REX.W subq rsp,0x28
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
0x1f185f16670a    10  488b45f8       REX.W movq rax,[rbp-0x8]    ;; debug: position 0
                  ;;; <@3,#1> gap
0x1f185f16670e    14  488945e0       REX.W movq [rbp-0x20],rax
                  ;;; <@8,#7> -------------------- B1 --------------------
                  ;;; <@9,#7> gap
0x1f185f166712    18  488bf0         REX.W movq rsi,rax
                  ;;; <@10,#8> declare-globals
0x1f185f166715    21  56             push rsi
0x1f185f166716    22  49bae9ce9b2bdc320000 REX.W movq r10,0x32dc2b9bcee9    ;; object: 0x32dc2b9bcee9 <FixedArray[6]>
0x1f185f166720    32  4152           push r10
0x1f185f166722    34  4533d2         xorl r10,r10
0x1f185f166725    37  4f8d14a2       REX.W leaq r10,[r10+r12*4]
0x1f185f166729    41  4152           push r10
0x1f185f16672b    43  b803000000     movl rax,0x3
0x1f185f166730    48  498d9d2845edfd REX.W leaq rbx,[r13-0x212bad8]
0x1f185f166737    55  e8240bfaff     call 0x1f185f107260     ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@12,#9> lazy-bailout
                  ;;; <@13,#9> gap
0x1f185f16673c    60  488b75e0       REX.W movq rsi,[rbp-0x20]
                  ;;; <@14,#10> stack-check
0x1f185f166740    64  660f1f840000000000 nop
0x1f185f166749    73  493ba550070000 REX.W cmpq rsp,[r13+0x750]
0x1f185f166750    80  7305           jnc 87  (0x1f185f166757)
0x1f185f166752    82  e869cefcff     call StackCheck  (0x1f185f1335c0)    ;; code: BUILTIN
                  ;;; <@16,#10> lazy-bailout
                  ;;; <@18,#16> allocate
0x1f185f166757    87  498b9d580a0000 REX.W movq rbx,[r13+0xa58]    ;; debug: position 79
0x1f185f16675e    94  488bc3         REX.W movq rax,rbx
0x1f185f166761    97  4883c020       REX.W addq rax,0x20
0x1f185f166765   101  0f826d010000   jc 472  (0x1f185f1668d8)
0x1f185f16676b   107  493b85600a0000 REX.W cmpq rax,[r13+0xa60]
0x1f185f166772   114  0f8760010000   ja 472  (0x1f185f1668d8)
0x1f185f166778   120  498985580a0000 REX.W movq [r13+0xa58],rax
0x1f185f16677f   127  48ffc3         REX.W incq rbx
                  ;;; <@20,#18> store-named-field
0x1f185f166782   130  49ba11413032ca0c0000 REX.W movq r10,0xcca32304111    ;; object: 0xcca32304111 <FixedArray[0]>
0x1f185f16678c   140  4c89530f       REX.W movq [rbx+0xf],r10
                  ;;; <@22,#20> store-named-field
0x1f185f166790   144  49ba7943112337290000 REX.W movq r10,0x293723114379    ;; object: 0x293723114379 <Map(elements=3)>
0x1f185f16679a   154  4c8953ff       REX.W movq [rbx-0x1],r10
                  ;;; <@24,#22> store-named-field
0x1f185f16679e   158  49ba11413032ca0c0000 REX.W movq r10,0xcca32304111    ;; object: 0xcca32304111 <FixedArray[0]>
0x1f185f1667a8   168  4c895307       REX.W movq [rbx+0x7],r10
                  ;;; <@26,#26> store-named-field
0x1f185f1667ac   172  49ba890b3132ca0c0000 REX.W movq r10,0xcca32310b89    ;; object: 0xcca32310b89 <String[1]: a>
0x1f185f1667b6   182  4c895317       REX.W movq [rbx+0x17],r10
                  ;;; <@28,#28> push-argument
0x1f185f1667ba   186  49ba890b3132ca0c0000 REX.W movq r10,0xcca32310b89    ;; object: 0xcca32310b89 <String[1]: a>
0x1f185f1667c4   196  4152           push r10
                  ;;; <@30,#28> push-argument
0x1f185f1667c6   198  4154           push r12
                  ;;; <@32,#28> push-argument
0x1f185f1667c8   200  53             push rbx
                  ;;; <@33,#28> gap
0x1f185f1667c9   201  488b75e0       REX.W movq rsi,[rbp-0x20]
                  ;;; <@34,#29> call-runtime
0x1f185f1667cd   205  b803000000     movl rax,0x3
0x1f185f1667d2   210  498d9d284bedfd REX.W leaq rbx,[r13-0x212b4d8]
0x1f185f1667d9   217  e8820afaff     call 0x1f185f107260     ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@36,#30> lazy-bailout
                  ;;; <@38,#34> push-argument
0x1f185f1667de   222  49ba99963132ca0c0000 REX.W movq r10,0xcca32319699    ;; debug: position 98
                                                             ;; object: 0xcca32319699 <String[1]: i>
0x1f185f1667e8   232  4152           push r10
                  ;;; <@40,#34> push-argument
0x1f185f1667ea   234  4154           push r12
                  ;;; <@42,#34> push-argument
0x1f185f1667ec   236  6a00           push 0x0
                  ;;; <@43,#34> gap
0x1f185f1667ee   238  488b75e0       REX.W movq rsi,[rbp-0x20]
                  ;;; <@44,#35> call-runtime
0x1f185f1667f2   242  b803000000     movl rax,0x3
0x1f185f1667f7   247  498d9d284bedfd REX.W leaq rbx,[r13-0x212b4d8]
0x1f185f1667fe   254  e85d0afaff     call 0x1f185f107260     ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@46,#36> lazy-bailout
                  ;;; <@49,#38> goto
0x1f185f166803   259  e918000000     jmp 288  (0x1f185f166820)    ;; debug: position 102
                  ;;; <@50,#42> -------------------- B2 (OSR entry) --------------------
0x1f185f166808   264  4883ec20       REX.W subq rsp,0x20
                  ;;; <@60,#48> context
0x1f185f16680c   268  488b45f8       REX.W movq rax,[rbp-0x8]
                  ;;; <@62,#50> gap
0x1f185f166810   272  488b7d10       REX.W movq rdi,[rbp+0x10]
0x1f185f166814   276  488bc8         REX.W movq rcx,rax
0x1f185f166817   279  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@63,#50> goto
0x1f185f16681b   283  e912000000     jmp 306  (0x1f185f166832)
                  ;;; <@64,#39> -------------------- B3 --------------------
                  ;;; <@66,#41> gap
0x1f185f166820   288  488b7d10       REX.W movq rdi,[rbp+0x10]
0x1f185f166824   292  488b4de0       REX.W movq rcx,[rbp-0x20]
0x1f185f166828   296  48bb11043332ca0c0000 REX.W movq rbx,0xcca32330411    ;; object: 0xcca32330411 <String[10]: use strict>
                  ;;; <@68,#57> -------------------- B4 --------------------
0x1f185f166832   306  48897dc8       REX.W movq [rbp-0x38],rdi
0x1f185f166836   310  48894dd0       REX.W movq [rbp-0x30],rcx
0x1f185f16683a   314  48895dd8       REX.W movq [rbp-0x28],rbx
                  ;;; <@70,#86> check-maps
                  ;;; <@72,#80> constant-t
0x1f185f16683e   318  48b8c84ca0d58b070000 REX.W movq rax,0x78bd5a04cc8    ;; debug: position 47
                                                             ;; debug: position 137
                                                             ;; property cell
0x1f185f166848   328  488b00         REX.W movq rax,[rax]
                  ;;; <@74,#87> load-named-field
0x1f185f16684b   331  488b4017       REX.W movq rax,[rax+0x17]    ;; debug: position 47
                  ;;; <@76,#90> check-instance-type
0x1f185f16684f   335  4c8b50ff       REX.W movq r10,[rax-0x1]    ;; debug: position 56
0x1f185f166853   339  41f6420b80     testb [r10+0xb],0x80
0x1f185f166858   344  0f8547010000   jnz 677  (0x1f185f1669a5)
                  ;;; <@78,#81> constant-t
0x1f185f16685e   350  48bed84ca0d58b070000 REX.W movq rsi,0x78bd5a04cd8    ;; debug: position 28
                                                             ;; property cell
0x1f185f166868   360  488b36         REX.W movq rsi,[rsi]
                  ;;; <@79,#81> gap
0x1f185f16686b   363  488bd0         REX.W movq rdx,rax
                  ;;; <@80,#92> string-add
0x1f185f16686e   366  e82df7ffff     call 0x1f185f165fa0     ;; debug: position 56
                                                             ;; code: STUB, StringAddStub, minor: 0
                  ;;; <@82,#92> lazy-bailout
                  ;;; <@84,#59> gap
0x1f185f166873   371  488b5dd8       REX.W movq rbx,[rbp-0x28]    ;; debug: position 102
                  ;;; <@86,#60> -------------------- B5 (loop header) --------------------
                  ;;; <@88,#61> load-global-cell
0x1f185f166877   375  48ba281fa1b08f030000 REX.W movq rdx,0x38fb0a11f28    ;; debug: position 110
                                                             ;; property cell
0x1f185f166881   385  488b12         REX.W movq rdx,[rdx]
                  ;;; <@90,#108> tagged-to-i
0x1f185f166884   388  f6c201         testb rdx,0x1
0x1f185f166887   391  0f85a4000000   jnz 561  (0x1f185f166931)
0x1f185f16688d   397  48c1ea20       REX.W shrq rdx,32
                  ;;; <@91,#108> gap
0x1f185f166891   401  488bca         REX.W movq rcx,rdx
                  ;;; <@92,#64> add-i
0x1f185f166894   404  83c101         addl rcx,0x1
0x1f185f166897   407  0f800d010000   jo 682  (0x1f185f1669aa)
                  ;;; <@94,#109> smi-tag
0x1f185f16689d   413  8bf1           movl rsi,rcx
0x1f185f16689f   415  48c1e620       REX.W shlq rsi,32
                  ;;; <@96,#65> store-global-cell
0x1f185f1668a3   419  49ba281fa1b08f030000 REX.W movq r10,0x38fb0a11f28    ;; property cell
0x1f185f1668ad   429  498932         REX.W movq [r10],rsi
                  ;;; <@99,#68> compare-numeric-and-branch
0x1f185f1668b0   432  81fa80969800   cmpl rdx,0x989680       ;; debug: position 114
0x1f185f1668b6   438  0f8d12000000   jge 462  (0x1f185f1668ce)
                  ;;; <@100,#69> -------------------- B6 (unreachable/replaced) --------------------
                  ;;; <@104,#75> -------------------- B7 --------------------
                  ;;; <@106,#77> stack-check
0x1f185f1668bc   444  493ba550070000 REX.W cmpq rsp,[r13+0x750]
0x1f185f1668c3   451  0f829b000000   jc 612  (0x1f185f166964)
                  ;;; <@110,#96> -------------------- B8 --------------------
                  ;;; <@112,#99> gap
0x1f185f1668c9   457  488bd8         REX.W movq rbx,rax      ;; debug: position 56
                                                             ;; debug: position 137
                  ;;; <@113,#99> goto
0x1f185f1668cc   460  eba9           jmp 375  (0x1f185f166877)
                  ;;; <@114,#72> -------------------- B9 (unreachable/replaced) --------------------
                  ;;; <@118,#100> -------------------- B10 --------------------
                  ;;; <@119,#100> gap
0x1f185f1668ce   462  488bc3         REX.W movq rax,rbx      ;; debug: position 144
                  ;;; <@120,#103> return
0x1f185f1668d1   465  488be5         REX.W movq rsp,rbp
0x1f185f1668d4   468  5d             pop rbp
0x1f185f1668d5   469  c20800         ret 0x8
                  ;;; <@18,#16> -------------------- Deferred allocate --------------------
0x1f185f1668d8   472  33db           xorl rbx,rbx            ;; debug: position 79
0x1f185f1668da   474  50             push rax
0x1f185f1668db   475  51             push rcx
0x1f185f1668dc   476  52             push rdx
0x1f185f1668dd   477  53             push rbx
0x1f185f1668de   478  56             push rsi
0x1f185f1668df   479  57             push rdi
0x1f185f1668e0   480  4150           push r8
0x1f185f1668e2   482  4151           push r9
0x1f185f1668e4   484  4153           push r11
0x1f185f1668e6   486  4156           push r14
0x1f185f1668e8   488  4157           push r15
0x1f185f1668ea   490  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0x1f185f1668ef   495  49ba0000000020000000 REX.W movq r10,0x2000000000
0x1f185f1668f9   505  4152           push r10
0x1f185f1668fb   507  6a00           push 0x0
0x1f185f1668fd   509  488b75e0       REX.W movq rsi,[rbp-0x20]
0x1f185f166901   513  b802000000     movl rax,0x2
0x1f185f166906   518  498d9d8810f0fd REX.W leaq rbx,[r13-0x20fef78]
0x1f185f16690d   525  e88ef9f9ff     call 0x1f185f1062a0     ;; code: STUB, CEntryStub, minor: 1
0x1f185f166912   530  4889442460     REX.W movq [rsp+0x60],rax
0x1f185f166917   535  488d642428     REX.W leaq rsp,[rsp+0x28]
0x1f185f16691c   540  415f           pop r15
0x1f185f16691e   542  415e           pop r14
0x1f185f166920   544  415b           pop r11
0x1f185f166922   546  4159           pop r9
0x1f185f166924   548  4158           pop r8
0x1f185f166926   550  5f             pop rdi
0x1f185f166927   551  5e             pop rsi
0x1f185f166928   552  5b             pop rbx
0x1f185f166929   553  5a             pop rdx
0x1f185f16692a   554  59             pop rcx
0x1f185f16692b   555  58             pop rax
0x1f185f16692c   556  e951feffff     jmp 130  (0x1f185f166782)
                  ;;; <@90,#108> -------------------- Deferred tagged-to-i --------------------
0x1f185f166931   561  4d8b5500       REX.W movq r10,[r13+0x0]    ;; debug: position 110
0x1f185f166935   565  4c3952ff       REX.W cmpq [rdx-0x1],r10
0x1f185f166939   569  0f8570000000   jnz 687  (0x1f185f1669af)
0x1f185f16693f   575  f20f104207     movsd xmm0,[rdx+0x7]
0x1f185f166944   580  f20f2cd0       cvttsd2sil rdx,xmm0
0x1f185f166948   584  0f57c9         xorps xmm1,xmm1
0x1f185f16694b   587  f20f2aca       cvtsi2sd xmm1,rdx
0x1f185f16694f   591  660f2ec1       ucomisd xmm0,xmm1
0x1f185f166953   595  0f855b000000   jnz 692  (0x1f185f1669b4)
0x1f185f166959   601  0f8a5a000000   jpe 697  (0x1f185f1669b9)
0x1f185f16695f   607  e92dffffff     jmp 401  (0x1f185f166891)
                  ;;; <@106,#77> -------------------- Deferred stack-check --------------------
0x1f185f166964   612  50             push rax                ;; debug: position 114
0x1f185f166965   613  51             push rcx
0x1f185f166966   614  52             push rdx
0x1f185f166967   615  53             push rbx
0x1f185f166968   616  56             push rsi
0x1f185f166969   617  57             push rdi
0x1f185f16696a   618  4150           push r8
0x1f185f16696c   620  4151           push r9
0x1f185f16696e   622  4153           push r11
0x1f185f166970   624  4156           push r14
0x1f185f166972   626  4157           push r15
0x1f185f166974   628  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0x1f185f166979   633  488b75f8       REX.W movq rsi,[rbp-0x8]
0x1f185f16697d   637  33c0           xorl rax,rax
0x1f185f16697f   639  498d9d18e8effd REX.W leaq rbx,[r13-0x21017e8]
0x1f185f166986   646  e815f9f9ff     call 0x1f185f1062a0     ;; code: STUB, CEntryStub, minor: 1
0x1f185f16698b   651  488d642428     REX.W leaq rsp,[rsp+0x28]
0x1f185f166990   656  415f           pop r15
0x1f185f166992   658  415e           pop r14
0x1f185f166994   660  415b           pop r11
0x1f185f166996   662  4159           pop r9
0x1f185f166998   664  4158           pop r8
0x1f185f16699a   666  5f             pop rdi
0x1f185f16699b   667  5e             pop rsi
0x1f185f16699c   668  5b             pop rbx
0x1f185f16699d   669  5a             pop rdx
0x1f185f16699e   670  59             pop rcx
0x1f185f16699f   671  58             pop rax
0x1f185f1669a0   672  e924ffffff     jmp 457  (0x1f185f1668c9)
                  ;;; -------------------- Jump table --------------------
                  ;;; deoptimize at <1:28> check-instance-type: wrong instance type
0x1f185f1669a5   677  e888f6c9ff     call 0x1f185ee06032     ;; deoptimization bailout 5
                  ;;; deoptimize at <0:110> add-i: overflow
0x1f185f1669aa   682  e897f6c9ff     call 0x1f185ee06046     ;; deoptimization bailout 7
                  ;;; deoptimize at <0:110> tagged-to-i: not a heap number
0x1f185f1669af   687  e8a6f6c9ff     call 0x1f185ee0605a     ;; deoptimization bailout 9
                  ;;; deoptimize at <0:110> tagged-to-i: lost precision
0x1f185f1669b4   692  e8a1f6c9ff     call 0x1f185ee0605a     ;; deoptimization bailout 9
                  ;;; deoptimize at <0:110> tagged-to-i: NaN
0x1f185f1669b9   697  e89cf6c9ff     call 0x1f185ee0605a     ;; deoptimization bailout 9
0x1f185f1669be   702  6690           nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 10)
 index  ast id    argc     pc  commands
     0       3       0     60  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=1}
                               LITERAL {literal_id=1}
     1       3       0     87  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=3, function=<self>, height=2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=1}
                               LITERAL {literal_id=1}
     2      25       0    222  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=25, function=<self>, height=2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=1}
                               LITERAL {literal_id=2}
     3      35       0    259  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=35, function=<self>, height=2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=1}
                               LITERAL {literal_id=2}
     4      39       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=39, function=<self>, height=2}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=-1}
                               STACK_SLOT {input=0}
     5      37       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=37, function=<self>, height=2}
                               REGISTER {input=rdi}
                               REGISTER {input=rcx}
                               REGISTER {input=rbx}
     6      37       0    371  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=37, function=<self>, height=2}
                               STACK_SLOT {input=4}
                               STACK_SLOT {input=3}
                               STACK_SLOT {input=2}
     7      37       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=37, function=<self>, height=2}
                               STACK_SLOT {input=4}
                               STACK_SLOT {input=3}
                               REGISTER {input=rbx}
     8      40       0    457  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=40, function=<self>, height=2}
                               STACK_SLOT {input=4}
                               STACK_SLOT {input=3}
                               LITERAL {literal_id=1}
     9      37       0     -1  BEGIN {frame count=1, js frame count=1}
                               JS_FRAME {ast_id=37, function=<self>, height=2}
                               STACK_SLOT {input=4}
                               STACK_SLOT {input=3}
                               REGISTER {input=rbx}

Safepoints (size = 85)
0x1f185f16673c    60  00010 (sp -> fp)       0
0x1f185f166757    87  00010 (sp -> fp)       1
0x1f185f1667de   222  00010 (sp -> fp)       2
0x1f185f166803   259  00010 (sp -> fp)       3
0x1f185f166873   371  11100 (sp -> fp)       6
0x1f185f166912   530  00010 | rbx (sp -> fp)  <none> argc: 2
0x1f185f16698b   651  11000 | rax (sp -> fp)       8

RelocInfo (size = 903)
0x1f185f16670a  position  (0)
0x1f185f16670a  comment  (;;; <@0,#0> -------------------- B0 --------------------)
0x1f185f16670a  comment  (;;; <@2,#1> context)
0x1f185f16670e  comment  (;;; <@3,#1> gap)
0x1f185f166712  comment  (;;; <@8,#7> -------------------- B1 --------------------)
0x1f185f166712  comment  (;;; <@9,#7> gap)
0x1f185f166715  comment  (;;; <@10,#8> declare-globals)
0x1f185f166718  embedded object  (0x32dc2b9bcee9 <FixedArray[6]>)
0x1f185f166738  code target (STUB)  (0x1f185f107260)
0x1f185f16673c  comment  (;;; <@12,#9> lazy-bailout)
0x1f185f16673c  comment  (;;; <@13,#9> gap)
0x1f185f166740  comment  (;;; <@14,#10> stack-check)
0x1f185f166753  code target (BUILTIN)  (0x1f185f1335c0)
0x1f185f166757  comment  (;;; <@16,#10> lazy-bailout)
0x1f185f166757  comment  (;;; <@18,#16> allocate)
0x1f185f166757  position  (79)
0x1f185f166782  comment  (;;; <@20,#18> store-named-field)
0x1f185f166784  embedded object  (0xcca32304111 <FixedArray[0]>)
0x1f185f166790  comment  (;;; <@22,#20> store-named-field)
0x1f185f166792  embedded object  (0x293723114379 <Map(elements=3)>)
0x1f185f16679e  comment  (;;; <@24,#22> store-named-field)
0x1f185f1667a0  embedded object  (0xcca32304111 <FixedArray[0]>)
0x1f185f1667ac  comment  (;;; <@26,#26> store-named-field)
0x1f185f1667ae  embedded object  (0xcca32310b89 <String[1]: a>)
0x1f185f1667ba  comment  (;;; <@28,#28> push-argument)
0x1f185f1667bc  embedded object  (0xcca32310b89 <String[1]: a>)
0x1f185f1667c6  comment  (;;; <@30,#28> push-argument)
0x1f185f1667c8  comment  (;;; <@32,#28> push-argument)
0x1f185f1667c9  comment  (;;; <@33,#28> gap)
0x1f185f1667cd  comment  (;;; <@34,#29> call-runtime)
0x1f185f1667da  code target (STUB)  (0x1f185f107260)
0x1f185f1667de  comment  (;;; <@36,#30> lazy-bailout)
0x1f185f1667de  comment  (;;; <@38,#34> push-argument)
0x1f185f1667de  position  (98)
0x1f185f1667e0  embedded object  (0xcca32319699 <String[1]: i>)
0x1f185f1667ea  comment  (;;; <@40,#34> push-argument)
0x1f185f1667ec  comment  (;;; <@42,#34> push-argument)
0x1f185f1667ee  comment  (;;; <@43,#34> gap)
0x1f185f1667f2  comment  (;;; <@44,#35> call-runtime)
0x1f185f1667ff  code target (STUB)  (0x1f185f107260)
0x1f185f166803  comment  (;;; <@46,#36> lazy-bailout)
0x1f185f166803  position  (102)
0x1f185f166803  comment  (;;; <@49,#38> goto)
0x1f185f166808  comment  (;;; <@50,#42> -------------------- B2 (OSR entry) --------------------)
0x1f185f16680c  comment  (;;; <@60,#48> context)
0x1f185f166810  comment  (;;; <@62,#50> gap)
0x1f185f16681b  comment  (;;; <@63,#50> goto)
0x1f185f166820  comment  (;;; <@64,#39> -------------------- B3 --------------------)
0x1f185f166820  comment  (;;; <@66,#41> gap)
0x1f185f16682a  embedded object  (0xcca32330411 <String[10]: use strict>)
0x1f185f166832  comment  (;;; <@68,#57> -------------------- B4 --------------------)
0x1f185f16683e  comment  (;;; <@70,#86> check-maps)
0x1f185f16683e  position  (47)
0x1f185f16683e  comment  (;;; <@72,#80> constant-t)
0x1f185f16683e  position  (137)
0x1f185f166840  property cell
0x1f185f16684b  comment  (;;; <@74,#87> load-named-field)
0x1f185f16684b  position  (47)
0x1f185f16684f  comment  (;;; <@76,#90> check-instance-type)
0x1f185f16684f  position  (56)
0x1f185f16685e  comment  (;;; <@78,#81> constant-t)
0x1f185f16685e  position  (28)
0x1f185f166860  property cell
0x1f185f16686b  comment  (;;; <@79,#81> gap)
0x1f185f16686e  comment  (;;; <@80,#92> string-add)
0x1f185f16686e  position  (56)
0x1f185f16686f  code target (STUB)  (0x1f185f165fa0)
0x1f185f166873  comment  (;;; <@82,#92> lazy-bailout)
0x1f185f166873  comment  (;;; <@84,#59> gap)
0x1f185f166873  position  (102)
0x1f185f166877  position  (110)
0x1f185f166877  comment  (;;; <@86,#60> -------------------- B5 (loop header) --------------------)
0x1f185f166877  comment  (;;; <@88,#61> load-global-cell)
0x1f185f166879  property cell
0x1f185f166884  comment  (;;; <@90,#108> tagged-to-i)
0x1f185f166891  comment  (;;; <@91,#108> gap)
0x1f185f166894  comment  (;;; <@92,#64> add-i)
0x1f185f16689d  comment  (;;; <@94,#109> smi-tag)
0x1f185f1668a3  comment  (;;; <@96,#65> store-global-cell)
0x1f185f1668a5  property cell
0x1f185f1668b0  position  (114)
0x1f185f1668b0  comment  (;;; <@99,#68> compare-numeric-and-branch)
0x1f185f1668bc  comment  (;;; <@100,#69> -------------------- B6 (unreachable/replaced) --------------------)
0x1f185f1668bc  comment  (;;; <@104,#75> -------------------- B7 --------------------)
0x1f185f1668bc  comment  (;;; <@106,#77> stack-check)
0x1f185f1668c9  position  (56)
0x1f185f1668c9  position  (137)
0x1f185f1668c9  comment  (;;; <@110,#96> -------------------- B8 --------------------)
0x1f185f1668c9  comment  (;;; <@112,#99> gap)
0x1f185f1668cc  comment  (;;; <@113,#99> goto)
0x1f185f1668ce  comment  (;;; <@114,#72> -------------------- B9 (unreachable/replaced) --------------------)
0x1f185f1668ce  position  (144)
0x1f185f1668ce  comment  (;;; <@118,#100> -------------------- B10 --------------------)
0x1f185f1668ce  comment  (;;; <@119,#100> gap)
0x1f185f1668d1  comment  (;;; <@120,#103> return)
0x1f185f1668d8  position  (79)
0x1f185f1668d8  comment  (;;; <@18,#16> -------------------- Deferred allocate --------------------)
0x1f185f16690e  code target (STUB)  (0x1f185f1062a0)
0x1f185f166931  position  (110)
0x1f185f166931  comment  (;;; <@90,#108> -------------------- Deferred tagged-to-i --------------------)
0x1f185f166964  position  (114)
0x1f185f166964  comment  (;;; <@106,#77> -------------------- Deferred stack-check --------------------)
0x1f185f166987  code target (STUB)  (0x1f185f1062a0)
0x1f185f1669a5  comment  (;;; -------------------- Jump table --------------------)
0x1f185f1669a5  comment  (;;; deoptimize at <1:28> check-instance-type: wrong instance type)
0x1f185f1669a6  runtime entry  (deoptimization bailout 5)
0x1f185f1669aa  comment  (;;; deoptimize at <0:110> add-i: overflow)
0x1f185f1669ab  runtime entry  (deoptimization bailout 7)
0x1f185f1669af  comment  (;;; deoptimize at <0:110> tagged-to-i: not a heap number)
0x1f185f1669b0  runtime entry  (deoptimization bailout 9)
0x1f185f1669b4  comment  (;;; deoptimize at <0:110> tagged-to-i: lost precision)
0x1f185f1669b5  runtime entry  (deoptimization bailout 9)
0x1f185f1669b9  comment  (;;; deoptimize at <0:110> tagged-to-i: NaN)
0x1f185f1669ba  runtime entry  (deoptimization bailout 9)
0x1f185f1669c0  comment  (;;; Safepoint table.)

--- End code ---
