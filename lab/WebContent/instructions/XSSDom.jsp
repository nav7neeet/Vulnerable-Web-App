<br>
<h4>How to test?</h4>
There are three different sinks where user-controlled input ends up. <br>
Check the source code to understand how DOM is being altered. Payload to be used for the following 3 different sinks.
<ol>
	<li>Document: Introduce a URL parameter "name=&lt;img src=1 onerror=alert()>"</li>
	<li>Location: Introduce a URL parameter "redir=javascript:alert()"</li>
	<li>Eval: Introduce a URL parameter "index=alert()</li>
</ol>

Note: This is taken from - https://brutelogic.com.br/blog/dom-based-xss-the-3-sinks/

