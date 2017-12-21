[_tb_system_call storage=system/_end_play.ks]

[playbgm  volume="100"  time="1000"  loop="true"  storage="アルバムの5ページ目.ogg"  fadein="true"  click="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="はあ.ogg"  ]
[tb_start_text mode=1 ]
もうよるだね…[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
気になった場所をクリック！[p]
[_tb_end_text]

*clickable

[clickable  storage=""  x="100"  y="445"  width="86"  height="28"  target="*magazine"  _clickable_img=""  ]
[clickable  storage=""  x="247"  y="113"  width="164"  height="343"  target="*koharu"  _clickable_img=""  ]
[clickable  storage=""  x="466"  y="176"  width="66"  height="168"  target="*kakejiku"  _clickable_img=""  ]
[clickable  storage=""  x="381"  y="350"  width="74"  height="99"  target="*table"  _clickable_img="living-day.jpg"  ]
[clickable  storage=""  x="0"  y="75"  width="221"  height="324"  target="*door"  _clickable_img=""  ]
[clickable  storage=""  x="455"  y="329"  width="52"  height="50"  target="*pot"  _clickable_img=""  ]
[clickable  storage=""  x="287"  y="-21"  width="124"  height="135"  target="*light"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#こはる
[_tb_end_text]

[tb_hide_message_window  ]
[s  ]
*magazine

[playse  volume="100"  time="1000"  buf="0"  storage="はいどーぞ.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="nod.mtn"  ]
[tb_start_text mode=1 ]
これは…[l]ざっしでござる。[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*koharu

[playse  volume="100"  time="1000"  buf="0"  storage="うふふふ.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="furifuri.mtn"  ]
[tb_start_text mode=1 ]
えへへー。[l]どうしたのー？[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*kakejiku

[playse  volume="100"  time="1000"  buf="0"  storage="うんうん.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="yes.mtn"  ]
[tb_start_text mode=1 ]
かけじくっていうんだよ。[l]イタズラしちゃめーだよ。[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*table

[playse  volume="100"  time="1000"  buf="0"  storage="どうしたの？.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="hatena.mtn"  ]
[tb_start_text mode=1 ]
なにかたべるの？[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*door

[playse  volume="100"  time="1000"  buf="0"  storage="それはちょっと・・・.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="iyaiya.mtn"  ]
[tb_start_text mode=1 ]
だめだよ。おそとはもうくらいよ？[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*pot

[playse  volume="100"  time="1000"  buf="0"  storage="姫＿よいぞよ.ogg"  ]
[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="nikkori.mtn"  ]
[tb_start_text mode=1 ]
つぼだよ。これはよいものだよ…[p]
[_tb_end_text]

[jump  storage=""  target="*clickable"  ]
*light

[tb_show_message_window  ]
[live2d_motion  name="koharu"  filenm="hatena.mtn"  ]
[tb_start_text mode=1 ]
もうおやすみ？[p]
[_tb_end_text]

[glink  color="black"  storage=""  size="20"  text="うん"  target="*sleep"  y="70"  x="220"  width="100"  height="22"  ]
[glink  color="black"  storage=""  size="20"  text="まだ"  target="*clickable"  y="140"  x="220"  width="100"  height="22"  ]
[s  ]
*sleep

[playse  volume="100"  time="1000"  buf="0"  storage="さみしいな.ogg"  ]
[live2d_motion  name="koharu"  filenm="gakkari.mtn"  ]
[tb_start_text mode=1 ]
そっかぁ…[p]
[_tb_end_text]

[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="smile"
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
それじゃ…[l]おやすみなさい。またね。[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="またねー.ogg"  ]
[live2d_hide  name="koharu"  time="1000"  ]
[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="idle"
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_hide_message_window  ]
[return  ]
