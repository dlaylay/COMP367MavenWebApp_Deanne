<html>
<head>
    <title>Welcome to COMP367</title>
    <script>
        function displayGreeting() {
            const userName = "Deanne"; // Replace with your actual name
            const now = new Date();
            const hour = now.getHours();
            let greeting;

            // Determine the greeting based on the current hour
            if (hour < 12) {
                greeting = `Good morning, ${userName}, Welcome to COMP367`;
            } else {
                greeting = `Good afternoon, ${userName}, Welcome to COMP367`;
            }

            // Display the greeting in the HTML
            document.getElementById("greeting").innerText = greeting;
        }

        // Call the function on page load
        window.onload = displayGreeting;
    </script>
</head>
<body>
    <h2 id="greeting"></h2>
</body>
</html>
