<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialNorms.aspx.cs" Inherits="Test.SpecialNorms" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxCallbackPanel ID="cbSpecialNormsPanel" ClientInstanceName="cbSpecialNormsPanel" runat="server" OnCallback="cbSpecialNormsPanel_Callback">
            <PanelCollection>
                <dx:PanelContent>
                    
                
        <div>
            <dx:ASPxPageControl ID="pcSpecial" runat="server" ActiveTabIndex="0" Width="100%">
                <TabPages>
                    <dx:TabPage Name="tabSpecialNorms" Text="Специальные нормы">
                        <ContentCollection>
                            <dx:ContentControl runat="server">

                                <h2>Специальные нормы</h2>
                            <dx:ASPxGridView ID="gvSpecialNorms" runat="server" 
                                AutoGenerateColumns="False" 
                                DataSourceID="dsSpecialNorms" 
                                KeyFieldName="ID"       
                                Width="100%"
                                >
                                <SettingsPopup>
                                    <HeaderFilter MinHeight="140px"></HeaderFilter>
                                </SettingsPopup>
                                <Columns>
                                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" 
                                        ShowNewButtonInHeader="True" ShowDeleteButton="True" Width="150px"></dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" Visible="false">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2" Caption="Наименование"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="UnitID" VisibleIndex="3" Caption="Ед.измерения" Width="150px">
                                        <PropertiesComboBox DataSourceID="dsSpecialUnits" TextField="Name" ValueField="ID"></PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4" Visible="false"></dx:GridViewDataTextColumn>
                                </Columns>
                            </dx:ASPxGridView>

                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="tabSpecialKindsOfSport" Text="Специальные виды спорта">
                        <ContentCollection>
                            <dx:ContentControl runat="server">

                                <h2>Специальные виды спорта</h2>
            <dx:ASPxGridView ID="gvSpecialKindsOfSport" ClientInstanceName="gvSpecialKindsOfSport" 
                runat="server" AutoGenerateColumns="False" 
                DataSourceID="dsSpecialKindsOfSport" 
                KeyFieldName="ID"
                Width="100%"
                >
                <SettingsDetail ShowDetailRow="true" ShowDetailButtons="true" />

<SettingsPopup>
<HeaderFilter MinHeight="140px"></HeaderFilter>
</SettingsPopup>
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" 
                        ShowNewButtonInHeader="True" ShowDeleteButton="True" Width="150px"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2" Caption="Наименование"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="3" Visible="false"></dx:GridViewDataTextColumn>
                </Columns>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="gvSpecialNormForKindOfSport" runat="server" 
                            AutoGenerateColumns="False" 
                            DataSourceID="dsSpecialNormsForKindOfSport" 
                            KeyFieldName="ID"
                            OnBeforePerformDataSelect="gvSpecialNormForKindOfSport_BeforePerformDataSelect"
                            Width="100%"
                            >
                            <SettingsDataSecurity AllowInsert="true" />
                            <Columns>
                                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" 
                                    ShowNewButtonInHeader="True" ShowDeleteButton="True" Width="150px"></dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" Visible="false">
                                    <EditFormSettings Visible="False"></EditFormSettings>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="KindOfSportID" VisibleIndex="2" Visible="false">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4" Visible="false"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="NormName" VisibleIndex="5" Visible="true" Caption="Наименование">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="NormID" VisibleIndex="3" Caption="Наименование" Visible="false">
                                    <EditFormSettings Visible="True" />
                                    <PropertiesComboBox DataSourceID="dsSpecialNorms" TextField="Name" ValueField="ID" >
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        
                
           
                    </DetailRow>
                </Templates>
            </dx:ASPxGridView>

                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="tabSpecialPeriod" ToolTip="Периоды" Text="Периоды">
                        <ContentCollection>
                            <dx:ContentControl runat="server">

                                <dx:ASPxGridView ID="gvPeriods" runat="server" AutoGenerateColumns="False" DataSourceID="dsSpecialOlimpicsPeriods" KeyFieldName="ID">
                                    <Columns>
                                        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowNewButtonInHeader="True" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" Visible="false">
                                            <EditFormSettings Visible="False"></EditFormSettings>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                        <dx:GridViewDataDateColumn FieldName="DateFrom" VisibleIndex="3">
                                            <PropertiesDateEdit DisplayFormatString="dd.MM.yyyy"></PropertiesDateEdit>
                                        </dx:GridViewDataDateColumn>
                                        <dx:GridViewDataDateColumn FieldName="DateTo" VisibleIndex="4">
                                            <PropertiesDateEdit DisplayFormatString="dd.MM.yyyy"></PropertiesDateEdit>
                                        </dx:GridViewDataDateColumn>
                                    </Columns>
                                </dx:ASPxGridView>


                                
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                </TabPages>
            </dx:ASPxPageControl>

            
            

            
            

            <h2>Нормативы для спортсменов</h2>
            <dx:ASPxComboBox ID="cbAthletes" 
                ClientInstanceName="cbAthletes" 
                runat="server" 
                DataSourceID="dsAthletes" 
                ValueField="ID" 
                TextField="Name" OnDataBound="cbAthletes_DataBound"
                Caption="Спортсмен" CaptionSettings-Position="Top"
                AutoPostBack="false"
                
                >
                <ClientSideEvents SelectedIndexChanged="function(s,e){ cbSpecialNormsPanel.PerformCallback('cbAthletes_SelectedIndexChanged'); }" />

<CaptionSettings Position="Top"></CaptionSettings>
            </dx:ASPxComboBox>
            <br />

            <dx:ASPxComboBox ID="cbPeriods" 
                ClientInstanceName="cbPeriods" runat="server" 
                DataSourceID="dsSpecialOlimpicsPeriods" 
                ValueField="ID" 
                TextField="Name" 
                Caption="Период"
                AutoPostBack="false">
                <ClientSideEvents SelectedIndexChanged="function(s,e){ cbSpecialNormsPanel.PerformCallback('cbPeriods_SelectedIndexChanged'); }" />
            </dx:ASPxComboBox>

            <br />

            <dx:ASPxGridView ID="gvAthletesKindsOfSport" runat="server" AutoGenerateColumns="False"
                DataSourceID="dsAthletesKindsOfSport"
                KeyFieldName="RowID"
                Width="100%">
                <SettingsDetail ShowDetailRow="true" ShowDetailButtons="true" />

                <SettingsPopup>
                    <HeaderFilter MinHeight="140px"></HeaderFilter>
                </SettingsPopup>
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0" Width="150px"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="RowID" ReadOnly="True"  Visible="false">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="KindOfSportID" ShowInCustomizationForm="True" VisibleIndex="1" Caption="Наименование">
                        <PropertiesComboBox DataSourceID="dsSpecialKindsOfSport" TextField="Name" ValueField="ID"></PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataDateColumn FieldName="Date" VisibleIndex="4" Caption="Дата">
                        <PropertiesDateEdit DisplayFormatString="dd.MM.yyyy"></PropertiesDateEdit>
                    </dx:GridViewDataDateColumn>
                </Columns>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="gvAthleteNorms" ClientInstanceName="gvAthleteNorms" runat="server"
                            AutoGenerateColumns="False"
                            DataSourceID="dsAthleteNorms"
                            KeyFieldName="ID"
                            OnBeforePerformDataSelect="gvAthleteNorms_BeforePerformDataSelect"
                            Width="100%">
                            <Columns>
                                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0"
                                    ShowNewButtonInHeader="True" ShowDeleteButton="False"
                                    Width="150px">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" Visible="false">
                                    <EditFormSettings Visible="False"></EditFormSettings>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="AthleteID" VisibleIndex="3" Visible="false"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="SpecialNormID" VisibleIndex="2" Caption="Нормы">
                                    <EditFormSettings Visible="False" />
                                    <PropertiesComboBox DataSourceID="dsSpecialNorms" TextField="Name" ValueField="ID"></PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataSpinEditColumn FieldName="Value" Caption="Значение" VisibleIndex="4">
                                    <PropertiesSpinEdit DisplayFormatString="g" AllowNull="true" MinValue="0"></PropertiesSpinEdit>
                                </dx:GridViewDataSpinEditColumn>
                                <dx:GridViewDataTextColumn FieldName="UnitName" VisibleIndex="5" Visible="True" Caption="Ед.измерения">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
            </dx:ASPxGridView>

            <%--DataSources--%>

            <asp:SqlDataSource runat="server" ID="dsAthletesKindsOfSport" 
                ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>' 
                DeleteCommand="AthletesKindsOfSport_Delete" 

                InsertCommand="" 

                SelectCommand="SELECT A.AthleteID,K.KindOfSportID, A.[Date], ROW_NUMBER() OVER (ORDER BY A.AthleteID,K.KindOfSportID,A.[Date]) as RowID 
FROM [dbo].[AthletesSpecialNorms] as A
LEFT JOIN dbo.SpecialNormsForKindsOfSport as K on A.SpecialNormID = K.ID
GROUP BY A.AthleteID, K.KindOfSportID, A.[Date] 
HAVING A.AthleteID = @AthleteID 
AND A.[Date] BETWEEN (SELECT DateFrom FROM dbo.SpecialOlimpicPeriod WHERE ID = @DateID) 
AND (SELECT DateTo FROM dbo.SpecialOlimpicPeriod WHERE ID = @DateID)" 
                OnSelecting="dsAthletesKindsOfSport_Selecting"
                OnInserting="dsAthletesKindsOfSport_Inserting">
                <SelectParameters>
                    <asp:Parameter Name="AthleteID" DefaultValue="-1" />
                    <asp:Parameter Name="DateID" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="AthleteID" />
                    <asp:Parameter Name="DateID" />
                    <asp:Parameter Name="SpecialOlimpicKindOfSportID" ></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="KindOfSportID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="SpecialNormID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Value" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>


            <asp:SqlDataSource runat="server" ID="dsAthleteNorms" ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>'
                DeleteCommand="DELETE FROM [AthletesSpecialNorms] WHERE [ID] = @ID"
                InsertCommand="INSERT INTO [AthletesSpecialNorms] ([SpecialNormID], [AthleteID], [Value], [State]) VALUES (@NormID, @AthleteID, @Value, @State)"
                SelectCommand="SELECT A.ID,
	A.AthleteID,
	A.SpecialNormID,
	N.[Name] as 'NormsName',
    S.KindOfSportID,
	A.[Value],
    U.Name as UnitName
FROM [AthletesSpecialNorms] as A
LEFT JOIN dbo.SpecialNormsForKindsOfSport as S ON A.SpecialNormID = S.ID
LEFT JOIN dbo.SpecialNorms as N ON S.NormID = N.ID
LEFT JOIN dbo.SpecialUnits as U ON N.UnitID = U.ID
WHERE A.AthleteID = @NormAthleteID AND S.KindOfSportID = @NormKindOfSportID
AND A.Date = @NormSpecialNormsDate" 
                UpdateCommand="UPDATE [AthletesSpecialNorms] SET [Value] = @Value, [Date] = @Date WHERE [ID] = @ID">
                <SelectParameters>
                    <asp:SessionParameter Name="NormAthleteID" SessionField="NormAthleteID" />
                    <asp:SessionParameter Name="NormKindOfSportID" SessionField="NormSpecialNormsKindOfSportID" />
                    <asp:SessionParameter Name="NormSpecialNormsDate" SessionField="NormSpecialNormsDate" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SpecialNormID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Value" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SpecialNormID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="AthleteID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="Value" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            

            <asp:SqlDataSource runat="server" ID="dsSpecialOlimpicsPeriods" ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>'
                DeleteCommand="DELETE FROM [SpecialOlimpicPeriod] WHERE [ID] = @ID"
                InsertCommand="INSERT INTO [SpecialOlimpicPeriod] ([Name], [DateFrom], [DateTo]) VALUES (@Name, @DateFrom, @DateTo)"
                SelectCommand="SELECT [ID], [Name], [DateFrom], [DateTo] FROM [SpecialOlimpicPeriod]"
                UpdateCommand="UPDATE [SpecialOlimpicPeriod] SET [Name] = @Name, [DateFrom] = @DateFrom, [DateTo] = @DateTo WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateFrom"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateTo"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateFrom"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateTo"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="dsAthletes" ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>' 
                DeleteCommand="DELETE FROM [Athletes] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Athletes] ([State], [Name]) VALUES (@State, @Name)" 
                SelectCommand="SELECT [ID], [State], [Name] FROM [Athletes]" 
                UpdateCommand="UPDATE [Athletes] SET [State] = @State, [Name] = @Name WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="dsSpecialNormsForKindOfSport" ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>'
                DeleteCommand="DELETE FROM [SpecialNormsForKindsOfSport] WHERE [ID] = @ID"
                InsertCommand="INSERT INTO [SpecialNormsForKindsOfSport] ([KindOfSportID], [NormID], [State]) VALUES (@KindOfSportID, @NormID, @State)"
                SelectCommand="SELECT K.[ID], K.[KindOfSportID], K.[NormID], K.[State], N.Name as NormName FROM [SpecialNormsForKindsOfSport] as K
LEFT JOIN dbo.SpecialNorms as N on K.[NormID] = N.ID
WHERE KindOfSportID = @KindOfSportID"
                UpdateCommand="UPDATE [SpecialNormsForKindsOfSport] SET [KindOfSportID] = @KindOfSportID, [NormID] = @NormID, [State] = @State WHERE [ID] = @ID"
                OnInserting="dsSpecialNormsForKindOfSport_Inserting"                
                >
                <SelectParameters>
                    <asp:SessionParameter Name="KindOfSportID" SessionField="SpecialNormsKindOfSportID" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="KindOfSportID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="NormID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="KindOfSportID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="NormID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="dsSpecialKindsOfSport" ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>' 
                DeleteCommand="UPDATE [SpecialKindsOfSport] SET State = 0 WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [SpecialKindsOfSport] ([Name], [State]) VALUES (@Name, @State)" 
                SelectCommand="SELECT [ID], [Name], [State] FROM [SpecialKindsOfSport] WHERE State = 1" 
                UpdateCommand="UPDATE [SpecialKindsOfSport] SET [Name] = @Name, [State] = @State WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="dsSpecialNorms" 
                ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>' 
                DeleteCommand="DELETE FROM [SpecialNorms] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [SpecialNorms] ([Name], [UnitID], [State]) VALUES (@Name, @UnitID, @State)" 
                SelectCommand="SELECT [ID], [Name], [UnitID], [State] FROM [SpecialNorms]" 
                UpdateCommand="UPDATE [SpecialNorms] SET [Name] = @Name, [UnitID] = @UnitID, [State] = @State WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="UnitID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="UnitID" Type="Int64"></asp:Parameter>
                    <asp:Parameter Name="State" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ID" Type="Int64"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="dsSpecialUnits" 
                ConnectionString='<%$ ConnectionStrings:SportlandConnectionString %>' 
                SelectCommand="SELECT [ID], [Name],  [State] FROM [SpecialUnits]" 
                >
            </asp:SqlDataSource>

        </div>

        </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </form>
</body>
</html>
