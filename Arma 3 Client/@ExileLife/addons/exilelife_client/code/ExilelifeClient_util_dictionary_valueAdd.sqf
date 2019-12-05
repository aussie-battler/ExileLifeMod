/**
                    * ExilelifeClient_util_dictionary_valueAdd
                    *
                    * Exile Mod
                    * www.exilemod.com
                    * © 2016 Exile Mod Team
                    *
                    * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
                    * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
                    * 
                    * Permission granted to ExileLife Dev Team to overwrite files and redistribute them
                    *
                    */

                    private["_dictionary","_itemToGet","_valueToAdd","_items","_values","_index","_return"];
_dictionary = _this select 0;
_itemToGet = (_this select 1) select 0;
_valueToAdd = (_this select 1) select 1;
_items = _dictionary select 0;
_values = _dictionary select 1;
if (_items isEqualTo []) exitWith
{
	_items pushbackUnique _itemToGet;
	_values pushback _valueToAdd;
	_dictionary
};
_index = _items find _itemToGet;
if (_index isEqualto -1) exitWith
{
	_items pushbackUnique _itemToGet;
	_values pushback _valueToAdd;
	_dictionary
};
_return = _values select _index;
_values set [_index, _return + _valueToAdd];
_dictionary