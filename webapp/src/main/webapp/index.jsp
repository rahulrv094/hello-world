<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.net.InetAddress" %>

<!DOCTYPE html>
<html>
<head>
    <title>DevOps CI/CD Demo Application</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 70%;
            margin: 50px auto;
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.15);
        }

        h1 {
            color: #2c3e50;
            text-align: center;
        }

        h2 {
            color: #34495e;
            border-bottom: 2px solid #3498db;
            padding-bottom: 5px;
        }

        .success {
            color: green;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #dcdcdc;
        }

        th {
            background-color: #3498db;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
        }

        .footer {
            margin-top: 30px;
            text-align: center;
            color: #666;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>🚀 Welcome to DevOps Demo Application</h1>

    <p class="success">
        Application Successfully Deployed via Jenkins CI/CD Pipeline
    </p>

    <h2>Deployment Information</h2>

    <table>
        <tr>
            <th>Property</th>
            <th>Value</th>
        </tr>

        <tr>
            <td>Application Name</td>
            <td>DevOps Demo Application</td>
        </tr>

        <tr>
            <td>Version</td>
            <td>1.0</td>
        </tr>

        <tr>
            <td>Build Tool</td>
            <td>Maven</td>
        </tr>

        <tr>
            <td>CI/CD Tool</td>
            <td>Jenkins</td>
        </tr>

        <tr>
            <td>Application Server</td>
            <td>Apache Tomcat</td>
        </tr>

        <tr>
            <td>Deployment Environment</td>
            <td>AWS EC2</td>
        </tr>

        <tr>
            <td>Server IP Address</td>
            <td><%= request.getLocalAddr() %></td>
        </tr>

        <tr>
            <td>Server Hostname</td>
            <td><%= InetAddress.getLocalHost().getHostName() %></td>
        </tr>

        <tr>
            <td>Server Port</td>
            <td><%= request.getServerPort() %></td>
        </tr>

        <tr>
            <td>Deployment Timestamp</td>
            <td><%= new Date() %></td>
        </tr>
    </table>

    <h2>Pipeline Flow</h2>

    <p>
        GitHub ➜ Jenkins ➜ Maven Build ➜ WAR Packaging ➜ Tomcat Deployment ➜ AWS EC2
    </p>

    <div class="footer">
        <p>
            DevOps Demo Project | Jenkins + Maven + Tomcat + AWS EC2
        </p>
    </div>

</div>

</body>
</html>
