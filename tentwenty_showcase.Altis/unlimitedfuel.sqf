_unit = _this select 0;

while{alive _unit} do
{
	if(fuel _unit <= 0.2 ) then
	{
		_unit setFuel 1;
	};
	uiSleep 600;
};