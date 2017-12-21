[_tb_system_call storage=system/_home_play.ks]

[cm  ]
[wait  time="2000"  ]
*play

[live2d_motion  name="koharu"  filenm="tambourine.mtn"  idle="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="タンバリン.ogg"  loop="true"  ]
[tb_start_text mode=1 ]
みてみてー[p]
たんばりーん♪[p]
[_tb_end_text]

[wait  time="3000"  ]
[stopse  time="1000"  buf="0"  ]
[live2d_motion  name="koharu"  filenm="idle.mtn"  idle="true"  ]
[tb_start_text mode=1 ]
あのね[p]
もっとたんばりんききたい？[p]
[_tb_end_text]

[glink  color="black"  storage=""  size="20"  text="聴きたい！"  target="*play"  y="140"  x="200"  width="170"  height="22"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="もういいよ"  target="*遊び終わり"  y="210"  x="200"  width="170"  height="22"  ]
[s  ]
