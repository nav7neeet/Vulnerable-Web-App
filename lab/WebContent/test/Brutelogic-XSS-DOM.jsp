<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <p id="p1">Hello, guest!</p>

  <script>
	var currentSearch = document.location.search;
	var searchParams = new URLSearchParams(currentSearch);

	/*** Document Sink ***/
	var username = searchParams.get('name');

	if (username !== null) {
		document.getElementById('p1').innerHTML = 'Hello, ' + username
				+ '!';
	}

	/*** Location Sink ***/
	var redir = searchParams.get('redir');

	if (redir !== null) {
		document.location = redir;
	}

	/*** Execution Sink ***/
	var nasdaq = 'AAAA';
	var dowjones = 'BBBB';
	var sp500 = 'CCCC';

	var market = [];
	var index = searchParams.get('index').toString();

	eval('market.index=' + index);

	document.getElementById('p1').innerHTML = 'Current market index is '
			+ market.index + '.';
  </script>

  <%@ include file="/instructions/XSSDom.jsp"%>
</body>
</html>
