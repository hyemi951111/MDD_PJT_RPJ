/*dog_diary_main 페이지*/
window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행

let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
let today = new Date();     // 페이지를 로드한 날짜를 저장
today.setHours(0,0,0,0);    // 비교 편의를 위해 today의 시간을 초기화

// 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
function buildCalendar() {

    let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
    let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

    let tbody_Calendar = document.querySelector(".Calendar > tbody");
    document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
    document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

    while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
        tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
    }

    let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

    for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
        let nowColumn = nowRow.insertCell();        // 열 추가
    }

    for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

        let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
        nowColumn.innerText = leftPad(nowDay.getDate()); 
        nowColumn.style.fontWeight = "bold";
        nowColumn.style.fontSize = "25px";     // 추가한 열에 날짜 입력

    
        if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
            nowColumn.style.color = "#DC143C";
        }
        if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
            nowColumn.style.color = "#0000CD";
            nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
        }

        if (nowDay < today) {                       // 지난날인 경우
            nowColumn.className = "pastDay";
             nowColumn.onclick =  function () { window.location.href = "diary_write" }
        }
        else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
            nowColumn.className = "today";
            nowColumn.onclick =  function () { window.location.href = "diary_write" }
        }
        else {                                      // 미래인 경우
            nowColumn.className = "futureDay";
            nowColumn.onclick =   function () { window.location.href = "diary_write" }
        }
    }
}

// 날짜 선택
function choiceDate(nowColumn) {
    if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
        document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
    }
    nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
}

// 이전달 버튼 클릭
function prevCalendar() {
    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
    buildCalendar();    // 달력 다시 생성
}
// 다음달 버튼 클릭
function nextCalendar() {
    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
    buildCalendar();    // 달력 다시 생성
}

// input값이 한자리 숫자인 경우 앞에 '0' 붙여주는 함수
function leftPad(value) {
    if (value < 10) {
        value = "0" + value;
        return value;
    }
    return value;
}

/*main 페이지*/
const polaroids = document.querySelectorAll('.polaroid');

function checkScroll() {
  polaroids.forEach((polaroid) => {
    const polaroidTop = polaroid.getBoundingClientRect().top;
    if (polaroidTop < window.innerHeight - 200) {
      polaroid.classList.add('show');
    }
  });
}

window.addEventListener('scroll', checkScroll);
checkScroll();

/*join 페이지*/ 

// 폼 요소 선택
const form = document.querySelector('form');
const usernameInput = document.querySelector('#username');
const passwordInput = document.querySelector('#password');
const passwordConfirmInput = document.querySelector('#password-confirm');
const emailInput = document.querySelector('#email');
const phoneInput = document.querySelector('#phone');

// 폼 전송 시 실행되는 함수
function submitForm(event) {
  event.preventDefault(); // 폼 전송 취소
  
  // 입력값 유효성 검사
  const username = usernameInput.value.trim();
  const password = passwordInput.value.trim();
  const passwordConfirm = passwordConfirmInput.value.trim();
  const email = emailInput.value.trim();
  const phone = phoneInput.value.trim();
  
  let errorMessage = '';
  
  if (username.length < 4) {
    errorMessage += '아이디는 4자 이상이어야 합니다.\n';
  }
  
  if (password.length < 8) {
    errorMessage += '비밀번호는 8자 이상이어야 합니다.\n';
  }
  
  if (password !== passwordConfirm) {
    errorMessage += '비밀번호와 비밀번호 확인 값이 일치하지 않습니다.\n';
  }
  
  if (!isValidEmail(email)) {
    errorMessage += '이메일 형식이 올바르지 않습니다.\n';
  }
  
  if (!isValidPhoneNumber(phone)) {
    errorMessage += '핸드폰번호 형식이 올바르지 않습니다.\n';
  }
  
  // 에러가 있을 경우 에러 메시지 출력
  if (errorMessage) {
    alert(errorMessage);
  } else {
    // 폼 전송
    form.submit();
  }
}
// 이메일 유효성 검사 함수
function isValidEmail(email) {
    // 이메일 정규식
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailRegex.test(email);
  }
  
  // 핸드폰 번호 유효성 검사 함수
  function isValidPhoneNumber(phone) {
    // 핸드폰 번호 정규식
    const phoneRegex = /^\d{3}-\d{3,4}-\d{4}$/;
    return phoneRegex.test(phone);
  }
  
  /*dog_community_write*/
  $(document).ready(function() {
    // Bootstrap-datepicker 적용
    $('#datepicker').datepicker({
      autoclose: true, // 선택 후 자동으로 닫히도록 설정
      language: 'kr', // 달력 언어를 한글로 설정
      format: 'yyyy년 mm월 dd일', // 선택한 날짜의 출력 형식 설정
      todayBtn: true, // 오늘 날짜로 이동하는 버튼 활성화
      todayHighlight: true // 오늘 날짜를 강조하여 표시
  }).on('changeDate', function(e) {
  // 선택한 날짜의 연도, 월, 일을 화면에 출력
  $('#selected-year').text(e.date.getFullYear());
  $('#selected-month').text(e.date.getMonth() + 1);
  $('#selected-day').text(e.date.getDate());
});
});
  
