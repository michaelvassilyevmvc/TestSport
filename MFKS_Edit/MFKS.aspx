<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MFKS.aspx.cs" Inherits="MFKS_Edit.MFKS" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxComboBox ID="cbFirms" 
                ClientInstanceName="cbFirms" 
                runat="server" 
                DataSourceID="dsFirms" 
                ValueField="ID" 
                TextField="NameRus" 
                OnValueChanged="cbFirms_ValueChanged" 
                AutoPostBack="true"
                Width="100%"
                >
            </dx:ASPxComboBox>
            <br />
            <h2>Спортсмены</h2>
            <dx:ASPxGridView ID="gvAthletes" ClientInstanceName="gvAthletes" runat="server" AutoGenerateColumns="False" DataSourceID="dsAthletes" KeyFieldName="ID"  Width="100%">
                <Settings ShowFilterRow="True"></Settings>
                <SettingsBehavior ConfirmDelete="true" />
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"></dx:GridViewCommandColumn>
                     <dx:GridViewDataComboBoxColumn FieldName="KindsOfSportsID" VisibleIndex="1">
                        <PropertiesComboBox DataSourceID="dsKindOfSport" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn FieldName="FirmID" VisibleIndex="7" Visible="false">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IIN" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Last_name" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="First_name" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Pat_name" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="Birth_date" VisibleIndex="6"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="8" ReadOnly="True">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="10"></dx:GridViewDataTextColumn>
                </Columns>
                
            </dx:ASPxGridView>

            <h2>Тренеры</h2>
            <dx:ASPxGridView ID="gvTrainers" 
                ClientInstanceName="gvTrainers" 
                runat="server" 
                AutoGenerateColumns="False" 
                DataSourceID="dsTrainer" 
                KeyFieldName="ID"
                >
                <Settings ShowFilterRow="True"></Settings>
                <SettingsBehavior ConfirmDelete="true" />
                <Columns>
                    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Last_name" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="First_name" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Pat_name" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IIN" VisibleIndex="7"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="FirmID" VisibleIndex="2" Visible="false">
                        <PropertiesComboBox DataSourceID="dsFirms" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="KindsOfSportsID" VisibleIndex="3">
                        <PropertiesComboBox DataSourceID="dsKindOfSport" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                </Columns>
            </dx:ASPxGridView>

            <h2>Учебные группы</h2>
            <dx:ASPxGridView ID="gvLearningGroup" ClientInstanceName="gvLearningGroup" runat="server" AutoGenerateColumns="False" DataSourceID="dsLearningGroups" KeyFieldName="ID">
                <Settings ShowFilterRow="True"></Settings>
                <SettingsBehavior ConfirmDelete="true" />
                <Columns>
                    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Year" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Type" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Period" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="8"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="9"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="KindsOfSportsID" VisibleIndex="6">
                        <PropertiesComboBox DataSourceID="dsKindOfSport" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="TrainerID" VisibleIndex="7">
                        <PropertiesComboBox DataSourceID="dsTrainer" TextField="Last_name" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="FirmID" VisibleIndex="2">
                        <PropertiesComboBox DataSourceID="dsFirms" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                </Columns>
            </dx:ASPxGridView>


            <h2>Завершенные мероприятия</h2>
            <dx:ASPxGridView ID="gvEventComplete" ClientInstanceName="gvEventComplete" runat="server" AutoGenerateColumns="False" DataSourceID="dsEventsComplete" KeyFieldName="ID">
                <Settings ShowFilterRow="True"></Settings>
                <SettingsBehavior ConfirmDelete="true" />
                <Columns>
                    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NameRus" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="StartDate" VisibleIndex="4"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="EndDate" VisibleIndex="5"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="FirmID" VisibleIndex="2" Visible="false">
                        <PropertiesComboBox DataSourceID="dsFirms" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                </Columns>
            </dx:ASPxGridView>

            <h2>Результаты спортсменов по завершенным мероприятиям</h2>
            <dx:ASPxGridView ID="gvAthletesEventComplete" 
                ClientInstanceName="gvAthletesEventComplete" runat="server" 
                AutoGenerateColumns="False" 
                DataSourceID="dsAthletesEventComplete" 
                KeyFieldName="ID">
                <Settings ShowFilterRow="True"></Settings>
                <SettingsBehavior ConfirmDelete="true" />
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="AthleteID" VisibleIndex="2">
                        <PropertiesComboBox DataSourceID="dsAthletes" TextField="Last_name" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Events_CompletedListID" VisibleIndex="3">
                        <PropertiesComboBox DataSourceID="dsEventsComplete" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Edit_FirmID" VisibleIndex="4" Visible="false">
                        <PropertiesComboBox DataSourceID="dsFirms" TextField="NameRus" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>

                </Columns>
            </dx:ASPxGridView>


            <asp:SqlDataSource runat="server" ID="dsAthletesEventComplete" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' 
                DeleteCommand="DELETE FROM [Athletes_performance] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Athletes_performance] ([AthleteID], [Events_CompletedListID], [Edit_FirmID]) VALUES (@AthleteID, @Events_CompletedListID, @Edit_FirmID)" 
                SelectCommand="SELECT [ID], [AthleteID], [Events_CompletedListID], [Edit_FirmID] FROM [Athletes_performance] WHERE [Edit_FirmID] = @FirmID" OnSelecting="dsCommon_Selecting" 
                UpdateCommand="UPDATE [Athletes_performance] SET [AthleteID] = @AthleteID, [Events_CompletedListID] = @Events_CompletedListID, [Edit_FirmID] = @Edit_FirmID WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Events_CompletedListID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Edit_FirmID" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Events_CompletedListID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Edit_FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
                 <SelectParameters>
                    <asp:Parameter Name="FirmID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource runat="server" ID="dsEventsComplete" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' 
                DeleteCommand="DELETE FROM [Events_CompletedList] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Events_CompletedList] ([FirmID], [NameRus], [StartDate], [EndDate]) VALUES (@FirmID, @NameRus, @StartDate, @EndDate)" 
                SelectCommand="SELECT [ID], [FirmID], [NameRus], [StartDate], [EndDate] FROM [Events_CompletedList] WHERE FirmID = @FirmID" OnSelecting="dsCommon_Selecting"
                UpdateCommand="UPDATE [Events_CompletedList] SET [FirmID] = @FirmID, [NameRus] = @NameRus, [StartDate] = @StartDate, [EndDate] = @EndDate WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="NameRus" Type="String"></asp:Parameter>
                    <asp:Parameter Name="StartDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="EndDate" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="NameRus" Type="String"></asp:Parameter>
                    <asp:Parameter Name="StartDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="EndDate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
                <SelectParameters>
                    <asp:Parameter Name="FirmID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource runat="server" ID="dsLearningGroups" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' 

                DeleteCommand="DELETE FROM [Learning_groups] WHERE [ID] = @ID" 

                InsertCommand="INSERT INTO [Learning_groups] ([FirmID], [Year], [Type], [Period], [KindsOfSportsID], [TrainerID], [Name], [State]) 
                VALUES (@FirmID, @Year, @Type, @Period, @KindsOfSportsID, @TrainerID, @Name, @State)" 

                SelectCommand="SELECT [ID], [FirmID], [Year], [Type], [Period], [KindsOfSportsID], [TrainerID], [Name], [State] 
                FROM [Learning_groups] WHERE [FirmID] = @FirmID" OnSelecting="dsCommon_Selecting"

                UpdateCommand="UPDATE [Learning_groups] 
                SET [FirmID] = @FirmID, [Year] = @Year, [Type] = @Type, [Period] = @Period, [KindsOfSportsID] = @KindsOfSportsID, [TrainerID] = @TrainerID, [Name] = @Name, [State] = @State 
                WHERE [ID] = @ID">

                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Year" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Type" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Period" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="TrainerID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Year" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Type" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Period" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="TrainerID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
                 <SelectParameters>
                    <asp:Parameter Name="FirmID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource runat="server" ID="dsAthletes" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' 
                DeleteCommand="DELETE FROM [Athletes] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Athletes] ([FirmID], [IIN], [Last_name], [First_name], [Pat_name], [Birth_date], [KindsOfSportsID]) VALUES (@FirmID, @IIN, @Last_name, @First_name, @Pat_name, @Birth_date, @KindsOfSportsID)" 
                SelectCommand="SELECT [FirmID], [IIN], [Last_name], [First_name], [Pat_name], [Birth_date], [KindsOfSportsID], [ID], [Status] 
                FROM [Athletes] 
                WHERE [FirmID] = @FirmID
                
                " 
                
                OnSelecting="dsCommon_Selecting"
                UpdateCommand="UPDATE [Athletes] SET [FirmID] = @FirmID, [IIN] = @IIN, [Last_name] = @Last_name, [First_name] = @First_name, [Pat_name] = @Pat_name, [Birth_date] = @Birth_date, [KindsOfSportsID] = @KindsOfSportsID WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IIN" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Pat_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Birth_date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="IIN" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Pat_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Birth_date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
                <SelectParameters>
                    <asp:Parameter Name="FirmID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="dsTrainer" runat="server" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' 
                DeleteCommand="DELETE FROM [Trainers] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Trainers] ([FirmID], [KindsOfSportsID], [Last_name], [First_name], [Pat_name], [IIN]) VALUES (@FirmID, @KindsOfSportsID, @Last_name, @First_name, @Pat_name, @IIN)" 
                SelectCommand="SELECT [ID], [FirmID], [KindsOfSportsID], [Last_name], [First_name], [Pat_name], [IIN] FROM [Trainers] WHERE [FirmID] = @FirmID" OnSelecting="dsCommon_Selecting"
                UpdateCommand="UPDATE [Trainers] SET [FirmID] = @FirmID, [KindsOfSportsID] = @KindsOfSportsID, [Last_name] = @Last_name, [First_name] = @First_name, [Pat_name] = @Pat_name, [IIN] = @IIN WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Pat_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="IIN" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirmID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="KindsOfSportsID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Pat_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="IIN" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
                 <SelectParameters>
                    <asp:Parameter Name="FirmID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="dsKindOfSport" runat="server" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' SelectCommand="SELECT [ID], [NameRus] FROM [KindsOfSports] where [State] = 1"></asp:SqlDataSource>

            <asp:SqlDataSource ID="dsFirms" runat="server" ConnectionString='<%$ ConnectionStrings:MFKSConnectionString %>' SelectCommand="SELECT [ID], [NameRus] FROM [Firms]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
