// GASでDMM英会話の予約メールから自動的にカレンダーに登録 | shotarok's Tech Blog
// http://blog.shotarok.com/post/2016-12-09-auto_creation_of_eikaiwa_events/

// function DMMEnglish() {
//   var criteria = "from:info@mail.dmm.com レッスン予約完了";
//   eachUnreadMessage(criteria, function (message) {
//     var body = message.getBody();
//     var [matched, year, month, day] = /ご予約日：(\d+)年(\d\d)月(\d\d)日/.exec(body);
//     var [matched, sh, sm] = /開始時間：(\d\d)時(\d\d)分/.exec(body);
//     var sdate = new Date(year, month-1, day, sh, sm);
//     var edate = new Date(sdate.getTime() + 30 * 60000);
//     createEvent("DMM英会話", sdate, edate);
//   }
//   );
// }