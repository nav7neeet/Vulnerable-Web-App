<br><br>
<h4>How to test?</h4>
One Way CSRF simply means we are not interested in the response.<br>
<ol>
	<li>Application accepts XML request/JSON request.</li>
	<li>Not possible to perform CSRF due to pre-flighted request</li>
	<li>Observe the following parameter and how 'value' is used to get rid of extra '=' at the end </li> 
	<input type="hidden" name='<?xml version' value='"1.0"?><employees><employee id="111"><firstName>Lokesh</firstName><lastName>Gupta</lastName><location>India</location></employee><employee id="333"><firstName>David</firstName><lastName>Feezor</lastName><location>USA</location></employee></employees>'>
</ol>	
