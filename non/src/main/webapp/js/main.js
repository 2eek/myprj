
	
	//Carousel캐러셀
		document.querySelector('.버튼1').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(0vw)';
		});
		
		document.querySelector('.버튼2').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(-100vw)';
		});	
		
		document.querySelector('.버튼3').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(-200vw)';
		});
			document.querySelector('.버튼4').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(-300vw)';
		});
		
		
		
		document.querySelector('.prevButton1').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(0vw)';
		});
		document.querySelector('.nextButton1').addEventListener('click', function() {
			document.querySelector('.container').style.transform = 'translate(-300vw)';
		});
		



	//setInterval 인터벌 hello world
	const intervalID = setInterval(myCallback, 500, 'Parameter 1', 'Parameter 2');

function myCallback(a, b)
{
 // 여기에 코드를 작성하세요
 // 매개변수는 순전히 선택적입니다.
 console.log(a);
 console.log(b);
}

// intervalID를 저장할 변수입니다
let nIntervId;

function changeColor() {
  // 간격이 이미 설정되어 있는지 확인합니다
  if (!nIntervId) {
    nIntervId = setInterval(flashText, 1000);
  }
}

function flashText() {
  const oElem = document.getElementById("my_box");
  oElem.className = oElem.className === "go" ? "stop" : "go";
}

function stopTextColor() {
  clearInterval(nIntervId);
  // 변수에서 intervalID를 해체합니다
  nIntervId = null;
}

document.getElementById("start").addEventListener("click", changeColor);
document.getElementById("stop").addEventListener("click", stopTextColor);