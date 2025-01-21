<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FeeMinder.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Dashboard - Fees Management System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
        }

        .jumbotron {
            background-color: #4caf50;
            color: #fff;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
        }

        .dashboard-link {
            display: block;
            background-color: #fff;
            color: #333;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .dashboard-link:hover {
            background-color: #f2f2f2;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 class="display-4">Welcome, Admin!</h1>
                <p class="lead">Manage your fees efficiently with our FeeMinder software.</p>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <asp:HyperLink ID="TotalStudentsLink" runat="server" NavigateUrl="ManageStudents.aspx" CssClass="dashboard-link">
                        <div class="card">
                            <h5 class="card-title">Total Students</h5>
                            <p class="card-text">7</p>
                        </div>
                    </asp:HyperLink>
                </div>
                <div class="col-md-4">
                    <asp:HyperLink ID="FeedetailsLink" runat="server" NavigateUrl="StudentsFeeDetails.aspx" CssClass="dashboard-link">
                        <div class="card">
                            <h5 class="card-title">Students fee details</h5>
                            <p class="card-text">Tution,Hostel and bus fees</p>
                        </div>
                    </asp:HyperLink>
                </div>
                <div class="col-md-4">
                    <asp:HyperLink ID="RecentActivitiesLink" runat="server" NavigateUrl="RecentActivities.aspx" CssClass="dashboard-link">
                        <div class="card">
                            <h5 class="card-title">Recent Activities</h5>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, velit ut consequat viverra.</p>
                        </div>
                    </asp:HyperLink>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:HyperLink ID="ManageStudentsLink" runat="server" NavigateUrl="ManageStudents.aspx" CssClass="dashboard-link">
                        <div class="card">
                            <h5 class="card-title">Manage Students</h5>
                            <p class="card-text">View, add, edit, and delete student records.</p>
                        </div>
                    </asp:HyperLink>
                </div>
                <div class="col-md-6">
                    <asp:HyperLink ID="ManageFeesLink" runat="server" NavigateUrl="ManageFees.aspx" CssClass="dashboard-link">
                        <div class="card">
                            <h5 class="card-title">Manage Fees</h5>
                            <p class="card-text">View, add, edit, and delete fee records.</p>
                        </div>
                    </asp:HyperLink>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
