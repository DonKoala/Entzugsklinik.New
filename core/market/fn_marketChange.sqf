/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,200] call life_fnc_randomRound; //0-200
_aanName = ">> BÖRSE <<";

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 36): //6% Drogenpreis erhöhen
	{
		[[0,"News: Das FBI hat eine Drogenbande ausgehoben ! Die Drogenpreise sind gestiegen !"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["methp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["lsdp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
	};
	case (_rand <= 44): //8% erhöhen
	{
		[[0,"News: Öltanker gesunken! Ölpreis ist gestiegen!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["salema", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["ornate", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["mackerel", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["tuna", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["mullet", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["catshark", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	case (_rand <= 54): //10% erhöhen
	{
		[[0,"News: Altis baut World-Trade-Center! Edelmetallpreise sind gestiegen!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["cotton", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["copper_r", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
	};
	case (_rand <= 60): //4% Goldpreis sinkt
	{
		[[0,"News: Anleger verlieren Vertrauen in Gold!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
	};
	case (_rand <= 68): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Elektronikindustrie benötigt seltene Materialien!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["copper_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 74): //6% Goldpreis erhöht sich
	{
		[[0,"News: Anleger verlieren Vertrauen in Dollar!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
	};
	case (_rand <= 80): //6% Drogenpreis niedriger
	{
		[[0,"News: Neue synthetische Droge überschwemmt Drogenmarkt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["methp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;  
		["lsdp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	case (_rand <= 90): //10% Schildkröten, Dachse höher
	{
		[[0,"News: China entdeckt seltene Tiere als neue Medizin! Tierschützer sind besorgt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;	
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";