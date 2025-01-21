<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FeeMinder.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .submit-btn {
            width: 100%;
            padding: 15px;
            border: none;
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        @media screen and (max-width: 500px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="container">
            <h1>Login</h1>
            <div>
                <asp:Label runat="server" Text="Username"></asp:Label>
                <asp:TextBox runat="server" ID="usernameTextBox" CssClass="textbox"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server" Text="Password"></asp:Label>
                <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password" CssClass="textbox"></asp:TextBox>
            </div>
            <asp:Button runat="server" ID="loginBtn" Text="Login" CssClass="submit-btn" OnClick="loginBtn_Click" />
        </div>
    </form>
</body>
</html>
