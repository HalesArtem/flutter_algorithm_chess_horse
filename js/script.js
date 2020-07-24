//


let field = document.createElement('div');
document.body.appendChild(field);
field.classList.add('field');

for (let i=0; i<64; i++) {
	let excel = document.createElement('div');
	field.appendChild(excel);
	excel.classList.add('excel');

}

let excel = document.getElementsByClassName('excel');
let x=1, y=8;
for(let i=0; i<excel.length; i++){
	if (x>8) {
		x=1;
		y--;
	}
	excel[i].setAttribute('postX', x);
	excel[i].setAttribute('postY', y);
	x++;
	if ((i % 2 == 0 && y % 2 == 0) || (i % 2 != 0 && y % 2 != 0)){
		excel[i].style.backgroundColor = "rgb(255,248,220)";
	} else{
		excel[i].style.backgroundColor = "brown";
	}
}