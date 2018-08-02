<%@ Page Title="Generate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterSeller.aspx.cs" Inherits="hajjCoins.Contact" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">Credit Card</div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h3 class="text-center title-2">Register seller</h3>
                                </div>
                                <hr>


                                <div class="form-group has-success">
                                    <label for="cc-name" class="control-label mb-1">Full Name</label>
                                    <asp:TextBox ID="TextBoxname" runat="server" CssClass="form-control cc-name valid"></asp:TextBox>
                                    <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                </div>
                                <div class="form-group has-success">
                                    <label for="cc-name" class="control-label mb-1">UserName</label>
                                    <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control cc-name valid"></asp:TextBox>
                                    <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                </div>
                                <div class="form-group has-success">
                                       <div class="row">
                                    <div class="col-lg-6">
                                        <label for="cc-name" class="control-label mb-1">Password</label>
                                        <asp:TextBox ID="TextBoxPass" runat="server" CssClass="form-control cc-name valid" TextMode="Password"></asp:TextBox>
                                     </div>
                                     <div class="col-lg-6">
                                        <label for="cc-name" class="control-label mb-1">RePassword</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control cc-name valid" TextMode="Password"></asp:TextBox>
                                     </div>
                                           </div>
                                </div>

                                <div class="form-group">
                                    <label for="cc-number" class="control-label mb-1">Email</label>
                                    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control cc-name valid"></asp:TextBox>
                                    <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                </div>

                                <div>

                                    <div class="col-sm-6">
                                        <input type="button" id="Button1" value="Register" onclick="generateQR()" class="btn btn-lg btn-info btn-block" />
                                    </div>

                                </div>
                                <hr>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </div>

    <!-- .content -->







</asp:Content>
