<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsFeeDetails.aspx.cs" Inherits="FeeMinder.StudentsFeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Fee Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
        .form-label {
            margin-bottom: 5px;
        }

.table th {
    text-align: left;
}

    </style>
</head>
<body>
    <div class="container">
        <h1>Student Fee Details</h1>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="rollNumber" class="form-label">Roll Number:</label>
                <asp:TextBox ID="rollnoTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="studentName" class="form-label">Student Name:</label>
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="tuitionFees" class="form-label">Tution Fees:</label>
                <asp:TextBox ID="tutionFeeTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="hostelFees" class="form-label">Hostel Fees:</label>
                <asp:TextBox ID="hostelFeeTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="busFees" class="form-label">Bus Fees:</label>
                <asp:TextBox ID="busFeeTextBox" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="insertFeeDetailsBtn" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="insertFeeDetailsBtn_Click" />


                        <br />

            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="4" CssClass="table table-striped table-bordered" OnPageIndexChanging="GridView1_PageIndexChanging">
    <Columns>
        <asp:TemplateField HeaderText="Student Roll no">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentrollno") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("studentname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tution Fees">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("tutionfee") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Hostel Fees">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("hostelfee") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Bus Fees">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("busfee") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
