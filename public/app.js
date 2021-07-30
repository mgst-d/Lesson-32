
function something() {
	var x = window.localStorage.getItem('abc');
	x = x * 1 + 1;
	window.localStorage.setItem('abc', x);
	alert(x);
}