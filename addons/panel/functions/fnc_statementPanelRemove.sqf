#include "script_component.hpp"
/*
 * Author: Katalam
 * Removes a panel at given target.
 *
 * Arguments:
 * 0: Target <OBJECT>
 *
 * Return Value:
 * Successful <BOOL>
 *
 * Example:
 * [cursorTarget] call KNB_panel_fnc_statementPanelRemove;
 *
 * Public: Yes
 */

params [["_target", objNull, [objNull]]];

private _object = (nearestObjects [_target, [
    "Tarp_01_Large_Green_F",
    "Tarp_01_Small_Green_F",
    "Tarp_01_Large_Black_F",
    "Tarp_01_Small_Black_F",
    "Tarp_01_Large_Yellow_F",
    "Tarp_01_Small_Yellow_F",
    "Tarp_01_Large_Red_F",
    "Tarp_01_Small_Red_F"
], 10]) select 0;
private _grasscutter = nearestObject [_target, "Land_ClutterCutter_large_F"];

deleteVehicle _object;
deleteVehicle _grasscutter;
deleteVehicle _target;

true;
