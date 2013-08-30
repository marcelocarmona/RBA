hooks
script
^ super script ,
'
var currentCode = 1;

function nextInput (idCodeString){
		$("code_input_" + currentCode ).value = idCodeString;
		if (currentCode == 4) $(submit).click()
		else currentCode++
 }
	




'