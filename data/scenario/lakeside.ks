[_tb_system_call storage=system/_lakeside.ks]

[cm  ]
[bg  time="1000"  method="crossfade"  storage="lakeside-daytime.jpg"  ]
[live2d_show  name="koharu"  scale="1"  time="1000"  top="-57"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="いちごと甘いクリーム.ogg"  fadein="true"  click="false"  ]
[tb_start_text mode=3 ]
よーし。[r]
こはる、やります！[r]
[_tb_end_text]

[live2d_motion  name="koharu"  filenm="ponpon_nod.mtn"  ]
[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="kiai"
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[glink  color="black"  storage=""  size="20"  text="存分にやるが良い"  target="*yes"  y="70"  x="200"  width="170"  height="22"  ]
[glink  color="black"  storage=""  size="20"  text="やめておけ…"  target="*no"  y="140"  x="200"  width="170"  height="22"  ]
[s  ]
*yes

[playse  volume="100"  time="1000"  buf="0"  storage="ありがとう.ogg"  ]
[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="idle"
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="適当らんらん歌.ogg"  ]
[live2d_motion  name="koharu"  filenm="ponpon.mtn"  idle="true"  ]
[tb_start_text mode=3 ]
ぽんぽんぽーん♪[r]
[_tb_end_text]

[wait  time="2000"  ]
[tb_start_text mode=1 ]
[p]たーのしー！！[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage=""  target="*more"  cond=""  ]
*no

[playse  volume="100"  time="1000"  buf="0"  storage="ううー.ogg"  ]
[live2d_motion  name="koharu"  filenm="angry.mtn"  ]
[tb_start_text mode=1 ]
ぶっすー。[p]
[_tb_end_text]

*more

[live2d_motion  name="koharu"  filenm="idle.mtn"  idle="true"  ]
[tb_start_text mode=1 ]
もっとポンポンしてもいいかな？[p]
[_tb_end_text]

[glink  color="black"  storage=""  size="20"  text="いいよ"  target="*yes"  y="70"  x="220"  width="150"  height="22"  ]
[glink  color="black"  storage=""  size="20"  text="もうダメ"  target="*no"  y="140"  x="220"  width="150"  height="22"  ]
[glink  color="black"  storage=""  size="20"  text="帰る"  target="*back_home"  y="210"  x="220"  width="150"  height="22"  ]
[s  ]
*back_home

[playse  volume="100"  time="1000"  buf="0"  storage="うん.ogg"  ]
[live2d_motion  name="koharu"  filenm="yes.mtn"  ]
[tb_start_text mode=1 ]
うん！[p]
[_tb_end_text]

[live2d_hide  name="koharu"  time="1000"  ]
[return  ]
