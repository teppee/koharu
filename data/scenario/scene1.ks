[_tb_system_call storage=system/_scene1.ks]

[iscript]
//APIキーの読み込み
$.getJSON("data/others/apikey.json" , function(data) {
var apikey = data.apikey ;
//気象情報の取得
$.getJSON("http://api.openweathermap.org/data/2.5/weather?q=Nara-shi,JP&APPID=" + apikey, function (data) {
if (!data.cod || data.cod != 200) {
return;
}
var weather_id = data.weather[0].id
var weather_main = data.weather[0].main;
f.temp = Math.floor(data.main.temp - 273.15) + "℃";
f.icon = "weather_icons\\" + data.weather[0].icon + ".png"
//気象情報日本語対応用のjson読み込み
$.getJSON("data/others/weather.json" , function(data) {
f.weather = data[weather_main.toLowerCase()];
});
//気象情報説明日本語対応用のjson読み込み
$.getJSON("data/others/weather_code.json" , function(data) {
f.weather_desc = data[weather_id] ;
});
});
});
//現在時刻の取得
var getH = new Date().getHours();
//昼夜判定
f.daytime = getH< 18 && getH >= 6;
[endscript]

*start

[cm  ]
[tb_start_tyrano_code]
;背景：お昼の場合
[if exp="f.daytime "]
[_tb_end_tyrano_code]

[bg  storage="living-day.jpg"  time="1000"  ]
[tb_start_tyrano_code]
;背景：夜の場合
[else]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="living-night.jpg"  ]
[tb_start_tyrano_code]
;背景：選択終了
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;お天気アイコン表示
@image layer=1 storage=&f.icon visible=true
[_tb_end_tyrano_code]

[tb_ptext_show  x="50"  y="10"  size="22"  color="0xffffff"  time="1000"  text="&f.temp"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="10"  y="36"  size="22"  color="0xffffff"  time="1000"  text="&f.weather_desc"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[tb_show_message_window  ]
[delay  speed="80"  ]
[tb_start_text mode=4 ]
#？？？
こーん　に
[_tb_end_text]

[delay  speed="30"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="こんにちは.ogg"  loop="false"  ]
[tb_start_text mode=1 ]
っちは～！！[p]
[_tb_end_text]

[playbgm  volume="100"  time="1000"  loop="true"  storage="fairy_garden.ogg"  click="false"  ]
[live2d_show  name="koharu"  scale="1"  time="1000"  top="-57"  left="1"  ]
[live2d_motion  name="koharu"  filenm="appeal.mtn"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="適当はなうた.ogg"  ]
[tb_start_text mode=1 ]
#こはる
こはるだよ～！[l]　きょうもげんき！！[p]
[_tb_end_text]

[tb_start_text mode=1 ]
きょうはどんなおてんきかな？[p]
[_tb_end_text]

[call  storage="select_weather.ks"  target=""  cond=""  ]
[tb_start_text mode=1 ]
そとは[emb exp="f.weather"]みたいだね。[p]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="f.weather=='いいおてんき' || f.weather=='くもり' || f.weather=='ゆき'"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
せっかくだから、おそとであそびたいな。[p]
[_tb_end_text]

[tb_start_tyrano_code]
[else]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
おてんきわるいから、おうちであそんでもいい？[p]
[_tb_end_text]

[tb_start_tyrano_code]
[endif]
[_tb_end_tyrano_code]

[call  storage="select_answer.ks"  target=""  ]
[tb_start_tyrano_code]
;外遊びOK
[if exp="f.answer && (f.weather=='いいおてんき' || f.weather=='くもり' || f.weather=='ゆき')"]

[_tb_end_tyrano_code]

[stopbgm  time="1000"  ]
[live2d_hide  name="koharu"  time="1000"  ]
[call  storage="lakeside.ks"  target=""  ]
[tb_start_tyrano_code]
;家遊びOK
[elsif exp="f.answer"]

[_tb_end_tyrano_code]

[jump  storage="home_play.ks"  target=""  ]
[tb_start_tyrano_code]
[endif]
[_tb_end_tyrano_code]

*遊び終わり

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
@live2d_expression name="koharu" filenm="idle"
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="living-night.jpg"  ]
[live2d_show  name="koharu"  scale="1"  time="1000"  top="-57"  ]
[call  storage="end_play.ks"  target=""  ]
[button  storage="scene1.ks"  target="*start"  graphic="title/button_start.gif"  width="250"  height="50"  x="201"  y="201"  _clickable_img=""  ]
[s  ]
