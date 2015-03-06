require "sinatra"
get"/" do
"hello world!"
end
get "/profile" do
	"i am raji and i am in amrita ruby workshop <br> happy holi"
end
get '/calc' do
	"
	<html>
	<body>
	<form action='/calculate' method='get'>
 	number1: <input name='number1'/>
	number2: <input name='number2'/>
<input type='submit' name='sub' value='add' />
<input type='submit' name='sub' value='mul' />
</form>
</body>
</html>
"
end
get '/calculate' do
	number1 = params['number1'].to_i
	number2 = params['number2'].to_i
	if params['sub']=='add'
	sum = number1+number2

	"the sum of the two number is #{sum}"
elsif params['sub']=='mul'
	sum=number1*number2
	"the product of the numbers is #{sum}"
end
end