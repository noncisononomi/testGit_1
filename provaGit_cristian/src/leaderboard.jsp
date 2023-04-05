<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Quizzle</title>
		<style>
		body{
			background:blue;
			background-image: linear-gradient(white, blue);
			margin: 330px 500px 300px 500px;
		}
		#leaderDiv{	
			border: 2px;
			padding: 5px;
			background:white;
			border-radius: 25px;
			box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 10px 25px 0 rgba(0,0,0,0.19);
		}
		h1{
			color: blue;
		 	text-align: center;
		}
		button{
			color: white;
			padding:  8px 10px;
			text-align: center;
			border-radius: 25px;
			background-color: blue;
		}
		button:hover{
			 box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 10px 25px 0 rgba(0,0,0,0.19);
		}
		form{
			text-align: center;
		}
		</style>
		<script type="text/javascript">
			window.addEventListener('load', function () {
				var leaderboard = JSON.parse('${leaderboard}') // Load and parse subjects Java vector'	
				var boardDiv = document.getElementById("boardDiv")
				var index = 0
	
				for (var [user, points] of Object.entries(leaderboard)) {
					console.log(index, user)
					var label = document.createElement("h3") // Create new subject button
                    label.innerHTML = (++index) + ". " + user + ": " + points
					
					boardDiv.appendChild(label)
				}
			})
		</script>
	</head>
	<body>
	<div id="leaderDiv">
		<h1>Leaderboard:</h1><br>
		<form action="mainServlet">
			<input type="hidden" name="userFlag" id="userFlag" value="${userFlag}">
			<div id="boardDiv">
			</div><br>
			<button type="submit" id="sendButton">Back</button>
		</form>
		</div>
	</body>
</html>