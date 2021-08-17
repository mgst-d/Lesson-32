
function something() {
	var x = window.localStorage.getItem('abc');
	x = x * 1 + 1;
	window.localStorage.setItem('abc', x);
	alert(x);
}

function add_to_cart(id) {
	var x = window.localStorage.getItem('product_' + id);
	x = x * 1 + 1;
	window.localStorage.setItem('product_' + id, x);
	update_orders();
	update_orders_button();
	// alert('You added pizza with id=' + id);
}
function cart_get_number_of_items()
{
	var count = 0;
	for(var i=0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		if (key.indexOf('product_') == 0)
		{
			var value = window.localStorage.getItem(key);
			count = count + value * 1;
		}
	}
	return count;
}

function cart_get_orders()
{
	var orders = '';
	for (var i=0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		if (key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + window.localStorage.getItem(key) + ',';
		}
	}
	return orders;
}
function update_orders()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders);
}
function update_orders_button()
{
	var text = 'Cart (' + cart_get_number_of_items() + ')';
	$('#orders_button').val(text);
}
