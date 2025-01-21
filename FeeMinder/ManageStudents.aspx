<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageStudents.aspx.cs" Inherits="FeeMinder.ManageStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <title>Student Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        
        .form-group {
            margin-bottom: 20px;
        }

        .btn-submit {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #45a049;
        }

        
        .gridview-wrapper {
            margin-top: 20px;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .table-actions {
            width: 100px;
        }

        .table-actions a {
            margin-right: 5px;
        }
    </style>
      
</head>
<body>

   
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Enter student roll number:" AssociatedControlID="textboxRollno"></asp:Label>
                        <asp:TextBox ID="textboxRollno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Enter student name:" AssociatedControlID="textboxstudentname"></asp:Label>
                        <asp:TextBox ID="textboxstudentname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Enter student class:" AssociatedControlID="textboxclass"></asp:Label>
                        <asp:TextBox ID="textboxclass" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Enter student section:" AssociatedControlID="textboxsection"></asp:Label>
                        <asp:TextBox ID="textboxsection" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="form-group text-center">
                <asp:Button ID="btnInsert" runat="server" Text="Submit" CssClass="btn btn-submit" OnClick="btnInsert_Click" />
            </div>

            <div class="gridview-wrapper">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5">
                    <Columns>
                        <asp:TemplateField HeaderText="Roll No">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtrollno" runat="server" Text='<%# Bind("studentrollno") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Lblrollno" runat="server" Text='<%# Bind("studentrollno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Student Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsname" runat="server" Text='<%# Bind("studentname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Lblsname" runat="server" Text='<%# Bind("studentname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Class">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtclass" runat="server" Text='<%# Bind("studentclass") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Lblclass" runat="server" Text='<%# Bind("studentclass") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Section">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtsection" runat="server" Text='<%# Bind("studentsection") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Lblsection" runat="server" Text='<%# Bind("studentsection") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" >
<ControlStyle CssClass="btn btn-sm btn-primary"></ControlStyle>
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-danger" >
<ControlStyle CssClass="btn btn-sm btn-danger"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
  

</body>
</html>
