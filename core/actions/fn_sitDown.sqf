//////////////////////////////////////////////////////////////////////////
//                            Script Made By                            //
//                                MacRae                                //
//                                                                      //
//                           MODIFIED BY XETOXYC                        //
//////////////////////////////////////////////////////////////////////////
if(life_sitting) then{
    player switchMove "";
    life_sitting = false;
} else {
    _chair = cursorTarget;
    _unit = player;

    [[_unit, "Crew"], "life_fnc_switchMove"] spawn life_fnc_MP; 
    //_unit setPos (getPos _chair); 
	_unit setPos (_chair modelToWorld [ 0, 0.1, 0.2]);
    _unit setDir ((getDir _chair) - 180); 
    _unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];
    life_sitting = true;
};

