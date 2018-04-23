if (isServer) then { 

	while {true} do {

		result = "TenTwenty" callExtension "<";

		result = "TenTwenty" callExtension format ["?:%1&%2", worldName, serverName];

		pls = allPlayers - entities "HeadlessClient_F";
		{	
			pos = getPosASL _x;
			pl = format ["!:%1&%2&%3&%4&%5", pos select 0, pos select 1, side _x, group _x, name _x];
			result = "TenTwenty" callExtension pl;

			if (_x == leader group _x) then {
				result = "TenTwenty" callExtension format ["#:%1&%2", group _x, name _x];
			};
		} forEach pls;

		result = "TenTwenty" callExtension ">";

		uisleep 10;
	};
};