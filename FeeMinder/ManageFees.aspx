<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFees.aspx.cs" Inherits="FeeMinder.ManageFees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <title>Manage Fees</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        
        .container {
            margin-top: 20px;
        }

        .table-actions {
            width: 200px;
        }
    
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
    
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center mb-4">Manage Fees</h1>
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

<div class="mb-3">
    <label for="busFees" class="form-label">Fees submission date:</label>
   <asp:TextBox ID="dateTextBox" runat="server" CssClass="form-control"
       TextMode="Date"/>
</div>

<div class="mb-3">
    <label for="busFees" class="form-label">Payment mode:</label>
    <asp:TextBox ID="feesModeTextBox" runat="server" CssClass="form-control" />
</div>
 <asp:Button ID="payfeeBtn" runat="server" Text="Pay fee" CssClass="btn btn-primary" OnClick="payfeeBtn_Click" />



            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" CssClass="table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
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
    <asp:TemplateField HeaderText="Fees Submission Date">
      <ItemTemplate>
        <asp:Label ID="Label6" runat="server" Text='<%# Bind("feesubmissiondate") %>'></asp:Label>
      </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Payment Mode">
      <ItemTemplate>
        <asp:Label ID="Label7" runat="server" Text='<%# Bind("feemode") %>'></asp:Label>
      </ItemTemplate>
    </asp:TemplateField>
  </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>




        </div>
    </form>

</body>
</html>
