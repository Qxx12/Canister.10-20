while {true} do {
	_result = "TenTwenty" callExtension "<";

	_result = "TenTwenty" callExtension format ["?:%1&%2", worldName, serverName];

	// pls = allPlayers - entities "HeadlessClient_F";
	
	{	
		pos = getPosASL _x;
		pl = format ["!:%1&%2&%3&%4&%5", pos select 0, pos select 1, side _x, group _x, name _x];
		_result = "TenTwenty" callExtension pl;

		if (_x == leader group _x) then {
			_result = "TenTwenty" callExtension format ["#:%1&%2", group _x, name _x];
		};
	} forEach allUnits;  // forEach pls;

	_result = "TenTwenty" callExtension ">";

	[_result] call Qxx_fnc_printReturnCode;

	uisleep 10;  // must NOT be less than 10
};