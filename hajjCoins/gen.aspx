<%@ Page Title="Generate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gen.aspx.cs" Inherits="hajjCoins.Contact" %>


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
                                    <h3 class="text-center title-2">Generate Card</h3>
                                </div>
                                <hr>


                                <div class="form-group has-success">
                                    <label for="cc-name" class="control-label mb-1">ID OF Holder</label>

                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control cc-name valid"></asp:TextBox>

                                    <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                </div>
                                <div class="form-group">
                                    <label for="cc-number" class="control-label mb-1">Coins</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control cc-name valid"></asp:TextBox>

                                    <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                </div>

                                <div>

                                    <div class="col-sm-6">
                                        <input type="button" id="Button1" value="generate" onclick="generateQR()" class="btn btn-lg btn-info btn-block" />
                                    </div>
                                    <hr>
                                    <div class="col-sm-6">
                                        <input type="button" id="Button2" value="Print" onclick="xx()" class="btn btn-lg btn-info btn-block" />
                                    </div>
                                </div>
                                <hr>
                                <div id="qrcodeCanvas" style="width: 300px; height: 300px;">
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </div>

    <!-- .content -->






    <%--from  https://github.com/jeromeetienne/jquery-qrcode--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="src/jquery.qrcode.js"></script>
    <script src="src/qrcode.js"></script>

    <%--from https://html2canvas.hertzen.com/--%>
    <script src="src/html2canvas.js"></script>

    <script type="text/javascript">

        function generateQR() {
            jQuery.noConflict(true);
            var textcode = document.getElementById('<%= TextBox1.ClientID %>').value;
            jQuery('#qrcodeCanvas').qrcode({
                text: textcode
            });
        }

        function xx() {
            html2canvas(document.querySelector('#qrcodeCanvas')).then(function (canvas) {

                console.log(canvas);
                saveAs(canvas.toDataURL(), 'file-name.png');
            });
        }


        function saveAs(uri, filename) {

            var link = document.createElement('a');

            if (typeof link.download === 'string') {

                link.href = uri;
                link.download = filename;

                //Firefox requires the link to be in the body
                //document.body.appendChild(link);

                //simulate click
                link.click();

                //remove the link when done
                document.body.removeChild(link);

            } else {

                window.open(uri);

            }
        }
    </script>
</asp:Content>
