﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CPanel/MP/anonymous.master" AutoEventWireup="true" CodeFile="Answers.aspx.cs" Inherits="CPanel_Students_StudentAnswers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="Server">
    Student Answers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td style="width: 71px">&nbsp;</td>
                <td class="modal-sm" style="width: 237px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">Student ID:</td>
                <td class="modal-sm" style="width: 237px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="StudentAnswers">
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ST_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ST_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Question">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("QS_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Answer">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Answer") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="StudentAnswers" runat="server" SelectMethod="DisplayStudentAnswers" TypeName="StudentsLayer">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="ST_ID" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>