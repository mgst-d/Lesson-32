
function something() {
	var x = window.localStorage.getItem('abc');
	x = x * 1 + 1;
	window.localStorage.setItem('abc', x);
	alert(x);
}

function add_to_cart(id) {
	alert('You added pizza with id=' + id);
}