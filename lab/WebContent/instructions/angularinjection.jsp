<br><br>
<b>How to test?</b>
<ol>
	<li>Use an AngularJs expression in the input field. e.g. {{3+2}} </li>
	<li>Observe that the mathematical expression evaluates to 5 which confirms AngularJS template injection.</li>
	<li>Use the following payload for XSS: 	{{constructor.constructor('alert(1)')()}} </li>
</ol>