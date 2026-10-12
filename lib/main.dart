<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>جدولي الأسبوعي 📚</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Tahoma,Arial,sans-serif;
}

body{
    background:#f5f5f5;
    color:#222;
    min-height:100vh;
    padding-bottom:105px;
}

.header{
    background:linear-gradient(180deg,#ed1c2e,#f59aa0,#f5f5f5);
    padding:40px 15px 30px;
    text-align:center;
}

.header h1{
    color:white;
    font-size:28px;
    margin-bottom:8px;
}

.header p{
    color:white;
    font-size:14px;
}

.container{
    max-width:650px;
    margin:auto;
    padding:0 15px;
}

.days-box{
    background:white;
    border-radius:30px;
    padding:18px 10px;
    margin-top:-5px;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.days{
    display:flex;
    gap:12px;
    overflow-x:auto;
    padding:5px;
}

.days::-webkit-scrollbar{
    display:none;
}

.day{
    min-width:82px;
    height:95px;
    border-radius:25px;
    border:1px solid #eee;
    background:#fafafa;
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    cursor:pointer;
    flex-shrink:0;
    transition:.2s;
}

.day-icon{
    width:48px;
    height:48px;
    border-radius:16px;
    background:#f0f0f0;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:24px;
    margin-bottom:7px;
}

.day-name{
    font-size:13px;
    font-weight:bold;
}

.day.active{
    background:#ed1c2e;
    color:white;
    box-shadow:0 7px 18px rgba(237,28,46,.3);
}

.day.active .day-icon{
    background:white;
}

.today-title{
    margin:28px 5px 8px;
    font-size:23px;
}

.today-sub{
    color:#777;
    margin:0 5px 18px;
    font-size:13px;
}

.schedule{
    display:flex;
    flex-direction:column;
    gap:12px;
}

.task{
    background:white;
    border-radius:23px;
    padding:15px;
    display:flex;
    align-items:center;
    gap:13px;
    box-shadow:0 4px 15px rgba(0,0,0,.06);
    border-right:5px solid #ddd;
}

.task-icon{
    width:55px;
    height:55px;
    min-width:55px;
    border-radius:18px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:26px;
}

.task-info{
    flex:1;
}

.task-title{
    font-size:16px;
    font-weight:bold;
    margin-bottom:5px;
}

.task-time{
    color:#777;
    font-size:13px;
}

.study{border-right-color:#f5b700}
.study .task-icon{background:#fff4c7}

.lesson{border-right-color:#00a878}
.lesson .task-icon{background:#dff8ee}

.fun{border-right-color:#e91e63}
.fun .task-icon{background:#ffe0eb}

.friends{border-right-color:#7348d8}
.friends .task-icon{background:#eee5ff}

.rest{border-right-color:#3498db}
.rest .task-icon{background:#e2f3ff}

.free{border-right-color:#999}
.free .task-icon{background:#eee}

.sleep{border-right-color:#333}
.sleep .task-icon{background:#e8e8e8}

.info{
    background:white;
    border-radius:23px;
    margin-top:18px;
    padding:18px;
    text-align:center;
    line-height:2;
    box-shadow:0 4px 15px rgba(0,0,0,.06);
}

.info strong{
    color:#ed1c2e;
}

.hidden{
    display:none !important;
}


/* =========================
   قسم الإنجازات
========================= */

.achievements{
    display:none;
}

.achievements.show{
    display:block;
}

.achievement-header{
    background:linear-gradient(135deg,#fff4c7,#fff);
    border-radius:25px;
    padding:22px;
    margin-top:25px;
    text-align:center;
    box-shadow:0 5px 18px rgba(0,0,0,.07);
}

.achievement-header .big-trophy{
    font-size:55px;
    margin-bottom:8px;
}

.achievement-header h2{
    font-size:23px;
    margin-bottom:6px;
}

.achievement-header p{
    color:#777;
    font-size:13px;
}

.achievement-stats{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:10px;
    margin-top:14px;
}

.achievement-stat{
    background:white;
    border-radius:20px;
    padding:16px 5px;
    text-align:center;
    box-shadow:0 4px 14px rgba(0,0,0,.06);
}

.achievement-stat .icon{
    font-size:27px;
}

.achievement-stat .number{
    color:#ed1c2e;
    font-size:19px;
    font-weight:bold;
    margin-top:5px;
}

.achievement-stat small{
    color:#777;
    font-size:10px;
}

.progress-card{
    background:white;
    border-radius:23px;
    padding:18px;
    margin-top:14px;
    box-shadow:0 4px 14px rgba(0,0,0,.06);
}

.progress-title{
    display:flex;
    justify-content:space-between;
    margin-bottom:10px;
    font-weight:bold;
}

.progress-percent{
    color:#ed1c2e;
}

.progress{
    width:100%;
    height:11px;
    background:#eee;
    border-radius:20px;
    overflow:hidden;
}

.progress-fill{
    width:0%;
    height:100%;
    background:linear-gradient(90deg,#ed1c2e,#ff7c85);
    border-radius:20px;
    transition:.5s;
}

.challenge{
    background:linear-gradient(135deg,#ed1c2e,#ff6670);
    color:white;
    border-radius:23px;
    padding:20px;
    margin-top:14px;
    text-align:center;
    box-shadow:0 6px 18px rgba(237,28,46,.2);
}

.challenge-icon{
    font-size:35px;
    margin-bottom:8px;
}

.challenge h3{
    margin-bottom:8px;
}

.challenge p{
    font-size:13px;
    line-height:1.8;
}

.challenge button{
    margin-top:13px;
    border:0;
    background:white;
    color:#ed1c2e;
    border-radius:20px;
    padding:11px 20px;
    font-weight:bold;
    cursor:pointer;
}

.badges{
    background:white;
    border-radius:23px;
    padding:18px;
    margin-top:14px;
    box-shadow:0 4px 14px rgba(0,0,0,.06);
}

.badges h3{
    margin-bottom:14px;
}

.badge-list{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:10px;
}

.badge{
    border:1px solid #eee;
    border-radius:18px;
    padding:14px 8px;
    text-align:center;
    background:#fafafa;
}

.badge-icon{
    font-size:30px;
    margin-bottom:5px;
}

.badge-name{
    font-size:12px;
    font-weight:bold;
}

.badge.locked{
    filter:grayscale(1);
    opacity:.45;
}


/* =========================
   القائمة السفلية
========================= */

.bottom-nav{
    position:fixed;
    bottom:10px;
    left:50%;
    transform:translateX(-50%);

    width:calc(100% - 20px);
    max-width:650px;

    background:white;
    border-radius:30px;

    padding:8px 3px;

    display:flex;
    justify-content:space-around;
    align-items:center;

    box-shadow:0 8px 30px rgba(0,0,0,.18);

    z-index:9999;
}

.nav-item{
    border:0;
    outline:0;
    background:transparent;

    color:#777;
    font-size:10px;

    min-width:55px;
    padding:5px 2px;

    cursor:pointer;
}

.nav-icon{
    font-size:22px;
    margin-bottom:4px;
}

.nav-item.active{
    color:#ed1c2e;
    font-weight:bold;
}

@media(max-width:450px){

    .header h1{
        font-size:25px;
    }

    .day{
        min-width:76px;
        height:90px;
    }

    .task-title{
        font-size:15px;
    }

    .nav-item{
        min-width:50px;
        font-size:9px;
    }

    .nav-icon{
        font-size:21px;
    }

    .achievement-stats{
        gap:7px;
    }
}
</style>
</head>

<body>

<div class="header">
    <h1>📚 جدولي الأسبوعي</h1>
    <p>نظم وقتك • ذاكر • استمتع • وعيش يومك ❤️</p>
</div>


<div class="container">

<!-- ================= الأيام ================= -->

<div class="days-box">

<div class="days">

<button class="day active" type="button"
onclick="showDay('saturday',this)">
<div class="day-icon">☀️</div>
<div class="day-name">السبت</div>
</button>

<button class="day" type="button"
onclick="showDay('sunday',this)">
<div class="day-icon">🌤️</div>
<div class="day-name">الأحد</div>
</button>

<button class="day" type="button"
onclick="showDay('monday',this)">
<div class="day-icon">📚</div>
<div class="day-name">الاثنين</div>
</button>

<button class="day" type="button"
onclick="showDay('tuesday',this)">
<div class="day-icon">📐</div>
<div class="day-name">الثلاثاء</div>
</button>

<button class="day" type="button"
onclick="showDay('wednesday',this)">
<div class="day-icon">🔬</div>
<div class="day-name">الأربعاء</div>
</button>

<button class="day" type="button"
onclick="showDay('thursday',this)">
<div class="day-icon">📖</div>
<div class="day-name">الخميس</div>
</button>

<button class="day" type="button"
onclick="showDay('friday',this)">
<div class="day-icon">🎉</div>
<div class="day-name">الجمعة</div>
</button>

</div>
</div>


<!-- ================= الجدول ================= -->

<div id="mainContent">

<h2 class="today-title" id="dayTitle">
السبت 📅
</h2>

<div class="today-sub" id="daySub">
تصحى 9:30 صباحًا عشان درس الدراسات
</div>

<div class="schedule" id="schedule"></div>

<div class="info">

📚 المذاكرة:
<strong>50 دقيقة</strong>
+ 10 دقائق راحة

<br>

🧑‍🤝‍🧑 الخروج مع الصحاب:
<strong>9:00 م → 11:00 م</strong>

<br>

🌙 الوقت الفاضي:
<strong>10:30 م → 2:00 ص</strong>

<br>

😴 النوم:
<strong>2:00 ص → 11:00 ص</strong>

</div>

</div>


<!-- ================= الإنجازات ================= -->

<div class="achievements" id="achievements">

<div class="achievement-header">

<div class="big-trophy">🏆</div>

<h2>إنجازاتي</h2>

<p>
كل مرة تخلص حاجة من جدولك، قربت خطوة من هدفك 🔥
</p>

</div>


<div class="achievement-stats">

<div class="achievement-stat">
<div class="icon">⭐</div>
<div class="number" id="points">0</div>
<small>نقطة</small>
</div>

<div class="achievement-stat">
<div class="icon">🔥</div>
<div class="number" id="streak">0</div>
<small>أيام متتالية</small>
</div>

<div class="achievement-stat">
<div class="icon">📚</div>
<div class="number" id="sessions">0</div>
<small>جلسات مذاكرة</small>
</div>

</div>


<div class="progress-card">

<div class="progress-title">
<span>📊 إنجاز اليوم</span>
<span class="progress-percent" id="percent">0%</span>
</div>

<div class="progress">
<div class="progress-fill" id="progressFill"></div>
</div>

</div>


<div class="challenge">

<div class="challenge-icon">🎯</div>

<h3>تحدي اليوم</h3>

<p id="challengeText">
ذاكر جلسة كاملة بتركيز من غير ما تفتح الموبايل 📚🔥
</p>

<button onclick="completeChallenge()">
أنجزت التحدي ✅
</button>

</div>


<div class="badges">

<h3>🏅 الشارات</h3>

<div class="badge-list">

<div class="badge" id="badge1">
<div class="badge-icon">🌱</div>
<div class="badge-name">أول خطوة</div>
</div>

<div class="badge locked" id="badge2">
<div class="badge-icon">🔥</div>
<div class="badge-name">3 أيام متتالية</div>
</div>

<div class="badge locked" id="badge3">
<div class="badge-icon">📚</div>
<div class="badge-name">10 جلسات مذاكرة</div>
</div>

<div class="badge locked" id="badge4">
<div class="badge-icon">🏆</div>
<div class="badge-name">50 نقطة</div>
</div>

</div>

</div>

</div>

</div>


<!-- ================= القائمة السفلية ================= -->

<div class="bottom-nav">

<button class="nav-item active"
type="button"
onclick="bottomMenu('home',this)">
<div class="nav-icon">🏠</div>
الرئيسية
</button>

<button class="nav-item"
type="button"
onclick="bottomMenu('study',this)">
<div class="nav-icon">📚</div>
المذاكرة
</button>

<button class="nav-item"
type="button"
onclick="bottomMenu('fun',this)">
<div class="nav-icon">🎮</div>
الترفيه
</button>

<button class="nav-item"
type="button"
onclick="bottomMenu('lessons',this)">
<div class="nav-icon">⏰</div>
المواعيد
</button>

<button class="nav-item"
type="button"
onclick="bottomMenu('achievements',this)">
<div class="nav-icon">🏆</div>
الإنجازات
</button>

</div>


<script>

/* =========================
   بيانات الأسبوع
========================= */

const week = {

saturday:{
title:"السبت 📅",
sub:"تصحى 9:30 صباحًا عشان درس الدراسات",
items:[
["9:30 ص","☀️","صحوة + فطار وتجهيز","rest"],
["10:00 ص","📖","درس دراسات","lesson"],
["12:00 م","☕","رجوع + راحة","rest"],
["2:00 م","📐","درس رياضة","lesson"],
["3:30 م","📐","مذاكرة رياضة","study"],
["4:20 م","☕","راحة","rest"],
["4:30 م","📚","مذاكرة عربي","study"],
["5:20 م","☕","راحة","rest"],
["7:00 م","🎮","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

sunday:{
title:"الأحد 📅",
sub:"علوم + دراسات",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["2:00 م","🔬","مذاكرة علوم","study"],
["2:50 م","☕","راحة","rest"],
["4:00 م","🔬","درس علوم","lesson"],
["6:00 م","📖","مذاكرة دراسات","study"],
["6:50 م","☕","راحة","rest"],
["7:30 م","🎮","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

monday:{
title:"الاثنين 📅",
sub:"عربي + لغة أجنبية",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["1:30 م","📚","درس عربي","lesson"],
["3:00 م","📚","مذاكرة عربي","study"],
["3:50 م","☕","راحة","rest"],
["4:30 م","🇬🇧","مذاكرة لغة أجنبية","study"],
["5:20 م","☕","راحة وتجهيز","rest"],
["6:00 م","🇬🇧","درس لغة أجنبية","lesson"],
["7:30 م","🎬","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

tuesday:{
title:"الثلاثاء 📅",
sub:"رياضة + علوم",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["2:00 م","📐","درس رياضة","lesson"],
["3:30 م","☕","راحة","rest"],
["4:00 م","📐","مذاكرة رياضة","study"],
["4:50 م","☕","راحة","rest"],
["5:00 م","🔬","مذاكرة علوم","study"],
["5:50 م","☕","راحة","rest"],
["7:00 م","🎮","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

wednesday:{
title:"الأربعاء 📅",
sub:"لغة أجنبية + دراسات + علوم",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["12:00 م","🇬🇧","درس لغة أجنبية — المساكن","lesson"],
["1:15 م","☕","رجوع + راحة","rest"],
["2:00 م","📖","درس دراسات","lesson"],
["4:00 م","🔬","درس علوم","lesson"],
["6:00 م","🍽️","أكل + راحة","rest"],
["7:00 م","📖","مذاكرة دراسات","study"],
["7:50 م","☕","راحة","rest"],
["8:00 م","🎮","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

thursday:{
title:"الخميس 📅",
sub:"عربي + رياضة",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["1:30 م","📚","درس عربي","lesson"],
["3:00 م","📚","مذاكرة عربي","study"],
["3:50 م","☕","راحة","rest"],
["5:00 م","📐","مذاكرة رياضة","study"],
["5:50 م","☕","راحة","rest"],
["7:00 م","🎮","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]},

friday:{
title:"الجمعة 📅",
sub:"لغة أجنبية + دراسات",
items:[
["11:00 ص","☀️","صحوة + فطار","rest"],
["2:00 م","🇬🇧","مذاكرة لغة أجنبية","study"],
["2:50 م","☕","راحة","rest"],
["3:30 م","📖","مذاكرة دراسات","study"],
["4:20 م","☕","راحة وتجهيز","rest"],
["6:00 م","🇬🇧","درس لغة أجنبية","lesson"],
["7:30 م","🎬","وقت ترفيه","fun"],
["9:00 م","🧑‍🤝‍🧑","خروج مع الصحاب","friends"],
["10:30 م","🌙","وقت فاضي","free"],
["2:00 ص","😴","نوم","sleep"]
]}

};


/* =========================
   عرض اليوم
========================= */

let currentDay="saturday";

function showDay(day,button){

    currentDay=day;

    document.querySelectorAll(".day").forEach(function(item){
        item.classList.remove("active");
    });

    button.classList.add("active");

    document.getElementById("mainContent").style.display="block";
    document.getElementById("achievements").classList.remove("show");

    document.getElementById("dayTitle").textContent=
        week[day].title;

    document.getElementById("daySub").textContent=
        week[day].sub;

    const box=document.getElementById("schedule");

    box.innerHTML="";

    week[day].items.forEach(function(item){

        const card=document.createElement("div");

        card.className="task "+item[3];

        card.dataset.type=item[3];

        card.innerHTML=
        '<div class="task-icon">'+item[1]+'</div>'+
        '<div class="task-info">'+
        '<div class="task-title">'+item[2]+'</div>'+
        '<div class="task-time">'+item[0]+'</div>'+
        '</div>';

        box.appendChild(card);

    });

    setNavActive(0);
}


/* =========================
   القائمة السفلية
========================= */

function setNavActive(index){

    document.querySelectorAll(".nav-item").forEach(function(btn){
        btn.classList.remove("active");
    });

    document.querySelectorAll(".nav-item")[index]
    .classList.add("active");
}


function bottomMenu(type,button){

    setNavActive(
        Array.from(document.querySelectorAll(".nav-item"))
        .indexOf(button)
    );

    const main=document.getElementById("mainContent");
    const achievements=document.getElementById("achievements");

    main.style.display="block";
    achievements.classList.remove("show");

    const tasks=document.querySelectorAll(".task");

    tasks.forEach(function(task){
        task.classList.remove("hidden");
    });


    if(type==="home"){

        window.scrollTo({
            top:0,
            behavior:"smooth"
        });

        return;
    }


    if(type==="study"){

        tasks.forEach(function(task){

            if(task.dataset.type!=="study"){
                task.classList.add("hidden");
            }

        });

        document.getElementById("dayTitle").textContent=
            "📚 مذاكرة اليوم";

        document.getElementById("daySub").textContent=
            "المواد اللي عليك مذاكرتها النهارده";

    }


    if(type==="fun"){

        tasks.forEach(function(task){

            if(
                task.dataset.type!=="fun" &&
                task.dataset.type!=="friends"
            ){
                task.classList.add("hidden");
            }

        });

        document.getElementById("dayTitle").textContent=
            "🎮 وقت الترفيه";

        document.getElementById("daySub").textContent=
            "الترفيه والخروج مع صحابك";

    }


    if(type==="lessons"){

        tasks.forEach(function(task){

            if(
                task.dataset.type!=="lesson" &&
                task.dataset.type!=="friends"
            ){
                task.classList.add("hidden");
            }

        });

        document.getElementById("dayTitle").textContent=
            "⏰ المواعيد";

        document.getElementById("daySub").textContent=
            "الدروس والخروجة";

    }


    if(type==="achievements"){

        main.style.display="none";
        achievements.classList.add("show");

        window.scrollTo({
            top:0,
            behavior:"smooth"
        });

        return;
    }


    document.getElementById("schedule").scrollIntoView({
        behavior:"smooth",
        block:"start"
    });
}


/* =========================
   نظام الإنجازات
========================= */

let points=0;
let streak=0;
let sessions=0;

function updateAchievements(){

    document.getElementById("points").textContent=points;
    document.getElementById("streak").textContent=streak;
    document.getElementById("sessions").textContent=sessions;

    let percent=Math.min(points,100);

    document.getElementById("percent").textContent=
        percent+"%";

    document.getElementById("progressFill").style.width=
        percent+"%";


    if(points>=15){
        document.getElementById("badge2")
        .classList.remove("locked");
    }

    if(sessions>=10){
        document.getElementById("badge3")
        .classList.remove("locked");
    }

    if(points>=50){
        document.getElementById("badge4")
        .classList.remove("locked");
    }
}


/* =========================
   تحدي اليوم
========================= */

const challenges=[

"ذاكر جلسة كاملة بتركيز من غير ما تفتح الموبايل 📚🔥",

"راجع أصعب نقطة في مادة عندك النهارده 🧠",

"خلص جلسة مذاكرة كاملة وبعدها كافئ نفسك 🎮",

"ذاكر 25 دقيقة بتركيز كامل 💪",

"راجع اللي ذاكرته النهارده من غير ما تبص في الكتاب ⭐"

];

function completeChallenge(){

    points+=10;
    streak+=1;
    sessions+=1;

    const random=
        Math.floor(Math.random()*challenges.length);

    document.getElementById("challengeText").textContent=
        "✅ برافو! خلصت التحدي! التحدي الجاي: "+
        challenges[random];

    updateAchievements();
}


/* تشغيل أول يوم */

showDay(
    "saturday",
    document.querySelector(".day.active")
);

updateAchievements();

</script>

</body>
</html>