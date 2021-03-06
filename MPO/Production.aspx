﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Production.aspx.cs" Inherits="MPO.Production" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            font-weight: bold;
            padding-left: 5px;
        }
        .style3
        {
            text-align: left;
        }
    </style>
   <script src="Scripts/CalendarSet.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            ForceNumberTextBox();
        });





        //For Validate Type
        function ForceNumberTextBox() {


            $("#<%= txt_PR_WEIGHT.ClientID %>").ForceNumericOnly2Digit();
            $("#<%= txt_PR_SUGAR.ClientID %>").ForceNumericOnly2Digit();
            $("#<%= txt_PR_SALT.ClientID %>").ForceNumericOnly2Digit();
            $("#<%= txt_PR_SORBITOL.ClientID %>").ForceNumericOnly2Digit();
            $("#<%= txt_PR_POLY_PHOSHATE.ClientID %>").ForceNumericOnly2Digit();
          

            $("#<%= txt_PR_UNIT.ClientID %>").ForceNumericOnly();


        }

     


        function updated() {
            //  close the popup
            tb_remove();

            //  refresh the update panel so we can view the changes  
            //$('#< %= this.BtnSearch.ClientID %>').click();
        }

        function pageLoad(sender, args) {
            if (args.get_isPartialLoad()) {
                //  reapply the thick box stuff
                tb_init('a.thickbox');

            }
        }
        
  
  
    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="pnlSave"  runat="server">
     
     <div style="width: 600px; margin-left: auto;margin-right: auto">
          <fieldset class="fiedbackgroundProduct"  >
		<legend>Production</legend>
		 
       <table class="style1">
        <tr>
            <td>
            <%--    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Production"></asp:Label>--%>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td style="text-align: right">
                            Refer</td>
                        <td class="style3">
                            <asp:DropDownList ID="drpRecreate" runat="server" AutoPostBack="True"  
                                onselectedindexchanged="drpRecreate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            กำหนดวันที่ผลิต
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_PR_PRODUCE_DATE"  CssClass="ControlDatePicker" runat="server"
                                Width="100"></asp:TextBox> 
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            เลือกแหล่งปลา
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="drpSource" CssClass="chosen-select"  runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            เลือกรหัสปลา
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drpFishID" CssClass="chosen-select"  runat="server" 
                                AutoPostBack="True" onselectedindexchanged="drpFishID_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            เลือกขนาดปลา
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drpFishSize" CssClass="chosen-select"  runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            ความสดของปลา
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drpPR_FRESHNESS" runat="server" CssClass="chosen-select">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            วันที่รับปลาตัว
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_REV_DATE"  CssClass="ControlDatePicker"   Width="100" runat="server"
                              ></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            วันที่ตัดหัวปลา
                        </td>
                        <td class="style3"> 
                            <asp:TextBox ID="txt_PR_CUT_DATE" runat="server" CssClass="ControlDatePicker"
                                Width="100"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            เลือกไลน์ผลิต
                        </td>
                        <td class="style3">
                           <%-- <asp:TextBox ID="txt_PR_LINE" runat="server"></asp:TextBox>--%>
                              <asp:DropDownList ID="drp_PR_LINE" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            เงื่อนไขผลิต
                        </td>
                        <td class="style3">
                           <%-- <asp:TextBox ID="txt_PR_CONDITION" runat="server"></asp:TextBox>--%>
                             <asp:DropDownList ID="drp_PR_CONDITION" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            น้ำหนักผลิตได้
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_WEIGHT" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            กำหนดวันที่บรรจุ
                        </td>
                        <td class="style3">                                       
                            <asp:TextBox ID="txt_PR_PACK_DATE" runat="server" CssClass="ControlDatePicker" Width="100px"
                                ></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            กำหนดชนิดกล่อง
                        </td>
                        <td class="style3">
                         <%--   <asp:TextBox ID="txt_PR_BOX_TYPE" runat="server"  ></asp:TextBox>--%>
                          <asp:DropDownList ID="drp_PR_BOX_TYPE" runat="server">
                            </asp:DropDownList>
                         

                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            กำหนดสีสายลัด</td>
                        <td class="style3">
                          <%--  <asp:TextBox ID="txt_PR_LINE_COLOR" runat="server"  ></asp:TextBox>--%>
                            <asp:DropDownList ID="drp_PR_LINE_COLOR" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
             <%--       <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            Auto Lot No
                        </td>
                        <td class="style3">
                            <asp:Label ID="lblLotNo" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            ปริมาณน้ำตาล
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_SUGAR" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            ปริมาณเกลือ
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_SALT" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            ปริมาณซอลบิทอล
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_SORBITOL" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            ปริมาณโพลีฟอสเฟส
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_POLY_PHOSHATE" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            กำหนดจำนวนกล่อง
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txt_PR_UNIT" runat="server"></asp:TextBox>
                            <asp:Label ID="lblnumItem" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            หมายเหตุ</td>
                        <td class="style3">
                            <asp:TextBox ID="txt_REMARK" runat="server" Height="79px" TextMode="MultiLine" 
                                Width="248px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align=center colspan="4">
                            <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" Width="88px" />&nbsp;&nbsp;
                            <input id="Button1" type="button" onclick="ClearData();" value="Reset" style="width:88px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style2">
                            &nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
	 
	</fieldset>
     </div>
     

 </asp:Panel>
  <asp:Panel ID="pnlSuccess" runat="server" style="text-align: center" 
        Visible="False">
         <asp:Label ID="lblLotSuccess" runat="server"  CssClass="BigText" Font-Size="20pt" 
           ></asp:Label>

  </asp:Panel>
</asp:Content>
