﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CPanel/CPanel.master" AutoEventWireup="true" CodeFile="Instructor_Salaries.aspx.cs" Inherits="CPanel_Instructor_Salaries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td style="width: 202px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ins_sal" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#0066CC" style="z-index: 1; position: absolute; top: 113px; left: 465px; width: 352px; right: 160px; height: 48px" Text="Instructor Salaries"></asp:Label>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 202px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 202px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Width="416px">
                        <Columns>
                            <asp:TemplateField HeaderText="IN_Name">
                                <ItemTemplate>
                                    <asp:Label ID="IN_Name_lbl" runat="server" Text='<%# Bind("IN_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IN_Salary">
                                <ItemTemplate>
                                    <asp:Label ID="IN_Salary" runat="server" Text='<%# Bind("IN_Salary") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 202px">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectInstructorSalaries" TypeName="InstructorsLayer"></asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

