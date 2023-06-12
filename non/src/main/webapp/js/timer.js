

const semicircles = document.querySelectorAll('.semicircle');

// 입력
const hr = 0;
const min = 0;
const sec = 5;

const hours = hr * 3600000;
const minutes = min * 60000;
const seconds = sec * 1000;
const setTime = hours + minutes + seconds;
const startTime = Date.now();
const futureTime = startTime + setTime;

const timerLoop = setInterval(countDownTimer, 1000);
countDownTimer();

function countDownTimer() {
    const currentTime = Date.now();
    const remainingTime = futureTime - currentTime;
    const angle = (remainingTime / setTime) * 360;

    // 진행 표시기
    if (angle > 180) {
        semicircles[2].style.display = 'none'; // 흰색 반원
        semicircles[0].style.transform = `rotate(180deg)`; // 빨간색 반원
        semicircles[1].style.transform = `rotate(${angle - 180}deg)`; // 파란색 반원
    } else {
        semicircles[2].style.display = 'block';
        semicircles[0].style.transform = `rotate(${angle}deg)`;
        semicircles[1].style.transform = `rotate(0deg)`;
    }
    
    // 파란색 반원이 빨간색으로 자동 흐르게 하기
    if (angle > 0 && angle < 180) {
        semicircles[1].style.transition = 'transform 1s linear';
    } else {
        semicircles[1].style.transition = '';
    }
}


