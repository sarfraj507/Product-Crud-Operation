<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our Application</title>
    
    <!-- External CSS and Bootstrap links for navbar -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc, #ff9a00, #ff3cac);
            background-size: 300% 300%;
            animation: backgroundShift 8s infinite alternate;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Navbar fixed at the top */
        .navbar-container {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 10; /* Ensures navbar stays on top of other content */
        }

        @keyframes backgroundShift {
            0% {
                background-position: 0% 50%;
            }

            100% {
                background-position: 100% 50%;
            }
        }

        .container {
            margin-top: 80px; /* Adjusting content to avoid navbar overlap */
            text-align: center;
            max-width: 600px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        .container h1 {
            font-size: 3rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 20px;
            background: linear-gradient(90deg, #43cea2, #185a9d);
            background-clip: text;
            color: transparent;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .container p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 30px;
            color: #fdfdfd;
        }

        .btn {
            display: inline-block;
            padding: 15px 25px;
            font-size: 1rem;
            font-weight: bold;
            color: #2575fc;
            background: #ffffff;
            border: none;
            border-radius: 25px;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .btn:hover {
            transform: scale(1.1);
            background: #2575fc;
            color: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>
    <!-- Include Navbar at the top, inside a fixed container -->
    <div class="navbar-container">
        <jsp:include page="navbar.jsp" />
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <h1>Welcome!</h1>
        <p>Welcome to the Product Management System</p>
     
    </div>
</body>

</html>
