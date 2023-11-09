<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Device</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        form {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>Add Device</h1>
    <!-- Form for adding a new device -->
    <form action="addDevice" method="post" id="addDeviceForm">
    
    <!--  <label for="deviceName">Device Id:</label>
        <input type="text" id="device_id" name="device_id" required /> -->
    
        <label for="deviceName">Device Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="desc">Description:</label>
        <input type="text" id="desc" name="desc" required />

        <label for="macAdd">Mac Address:</label>
        <input type="text" id="macAdd" name="macAdd" required />

        <label for="macIp">Mac IP:</label>
        <input type="text" id="macIp" name="macIp" required />
        <!-- <textarea id="createdOn" name="createdOn"></textarea> -->
		
		<br><br>
		
        <input type="submit" value="Add Device">
    </form>
    
    <script>
        document.getElementById("addDeviceForm").addEventListener("submit", function (e) {
            e.preventDefault(); // Prevent the default form submission

            const form = e.target;
            const formData = new FormData(form);

            fetch("http://localhost:9090/device/addDevice", {
                method: "POST",
               /*  body: formData */
                headers: {
                    "Accept": "application/json",
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(Object.fromEntries(formData))
            })
            .then(response => response.json())
            .then(data => {
                alert("Device added successfully!"); // Display a success message
                form.reset(); // Reset the form
            })
            .catch(error => {
                alert("Error adding device: " + error); // Display an error message
            });
        });
    </script>
</body>
</html>