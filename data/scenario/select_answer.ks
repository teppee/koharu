[_tb_system_call storage=system/_select_answer.ks]

[glink  color="black"  storage=""  size="20"  text="いいよ"  target="*yes"  y="70"  x="220"  width="100"  height="22"  ]
[glink  color="black"  storage=""  size="20"  text="ダメ"  target="*no"  y="140"  x="220"  width="100"  height="22"  ]
[s  ]
*yes

[playse  volume="100"  time="1000"  buf="0"  storage="うわーありがとう.ogg"  ]
[iscript]
f.answer = true
[endscript]

[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="idle"
[_tb_end_tyrano_code]

[live2d_motion  name="koharu"  filenm="furifuri.mtn"  ]
[tb_start_text mode=1 ]
やったぁ！[p]
[_tb_end_text]

[return  ]
*no

[playse  volume="100"  time="1000"  buf="0"  storage="ううー.ogg"  ]
[iscript]
f.answer = false
[endscript]

[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="trouble"
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
あーうー…。[p]

[_tb_end_text]

[tb_start_text mode=4 ]
いそがしいんだよね…[l]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ごめんね.ogg"  ]
[tb_start_text mode=1 ]
ごめんなさい。[p]
[_tb_end_text]

[return  ]
