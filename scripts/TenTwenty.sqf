if (isServer) then { 

	while {true} do {

		result = "TenTwenty" callExtension "<";  // starts to gather some info

		result = "TenTwenty" callExtension format ["?:%1&%2", worldName, serverName];  // the string "?:%1&%2" must not be changed

		pls = allPlayers - entities "HeadlessClient_F";
		{	
			pos = getPosASL _x;
			pl = format ["!:%1&%2&%3&%4&%5", pos select 0, pos select 1, side _x, group _x, name _x];  // the string "!:%1&%2&%3&%4&%5" must not be changed
			result = "TenTwenty" callExtension pl;

			if (_x == leader group _x) then {
				result = "TenTwenty" callExtension format ["#:%1&%2", group _x, name _x];  // the string "#:%1&%2" must not be changed
			};
		} forEach pls;

		result = "TenTwenty" callExtension ">";  // send the info to the server

		uisleep 10;  // must not be less than 10
	};
};
