[_tb_system_call storage=system/_select_weather.ks]

[glink  color="black"  storage="select_weather.ks"  size="20"  text="晴れ"  target="*晴れ"  y="70"  x="220"  width="100"  height="22"  ]
[glink  color="black"  storage="select_weather.ks"  size="20"  text="雨"  target="*雨"  y="140"  x="220"  width="100"  height="22"  ]
[glink  color="black"  storage="select_weather.ks"  size="20"  text="雷"  target="*雷"  y="210"  x="220"  width="100"  height="22"  ]
[glink  color="black"  storage="select_weather.ks"  size="20"  text="雪"  target="*雪"  y="280"  x="220"  width="100"  height="22"  ]
[s  ]
*晴れ

[iscript]
f.weather = "いいおてんき"
[endscript]

[jump  storage="select_weather.ks"  target="*responce"  ]
*雨

[iscript]
f.weather = "あめ"
[endscript]

[jump  storage="select_weather.ks"  target="*responce"  ]
*雷

[iscript]
f.weather = "かみなりとあめ"
[endscript]

[jump  storage="select_weather.ks"  target="*responce"  ]
*雪

[iscript]
f.weather = "ゆき"
[endscript]

[jump  storage="select_weather.ks"  target="*responce"  ]
*responce

[tb_start_tyrano_code]
[if exp="f.weather=='いいおてんき'"]
@live2d_expression name="koharu" filenm="smile"
[_tb_end_tyrano_code]

[live2d_motion  name="koharu"  filenm="furifuri.mtn"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="うふふふ.ogg"  ]
[tb_start_tyrano_code]
[elsif exp="f.weather=='ゆき'"]
@live2d_expression name="koharu" filenm="kirakira"
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="キラーン.ogg"  ]
[live2d_motion  name="koharu"  filenm="kirakira.mtn"  ]
[tb_start_tyrano_code]
[elsif exp="f.weather=='あめ' || f.weather=='きりみたいなあめ'"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="むむっ.ogg"  ]
[live2d_motion  name="koharu"  filenm="trouble.mtn"  ]
[tb_start_tyrano_code]
[elsif exp="f.weather=='かみなりとあめ' || f.weather=='えくすとりーむなおてんき'"]
@live2d_expression name="koharu" filenm="cry"
[_tb_end_tyrano_code]

[live2d_motion  name="koharu"  filenm="cry.mtn"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="うーー(嘆き.ogg"  ]
[tb_start_tyrano_code]
[endif]
[_tb_end_tyrano_code]

[return  ]
