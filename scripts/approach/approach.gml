///@arg currentValue
///@arg targetValue
///@arg changeAmount

var currentValue = argument0;
var targetValue = argument1;
var changeAmount = argument2;

if (currentValue < targetValue) {
	currentValue += changeAmount;
	currentValue = min(currentValue, targetValue);
} else {
	currentValue -= changeAmount;
	currentValue = max(currentValue, targetValue);
}

return currentValue;