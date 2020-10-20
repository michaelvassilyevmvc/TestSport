<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeListTest.aspx.cs" Inherits="Test.TreeListTest" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:aspxtreelist runat="server" 
                AutoGenerateColumns="False" 
                DataSourceID="dsTest"
                KeyFieldName="ID" ParentFieldName="ParentID"
                ViewStateMode="Disabled" 
                >
                <Columns>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ID" ShowInFilterControl="Default" VisibleIndex="0" Visible="false">
                    </dx:TreeListTextColumn>
                    <%--<dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="RealID" ShowInFilterControl="Default" VisibleIndex="1">
                    </dx:TreeListTextColumn>--%>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ParentID" ShowInFilterControl="Default" VisibleIndex="2" Visible="false">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="Name" ShowInFilterControl="Default" VisibleIndex="3">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="NameRus" ShowInFilterControl="Default" VisibleIndex="4">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="NameKaz" ShowInFilterControl="Default" VisibleIndex="5">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SectionID" ShowInFilterControl="Default" VisibleIndex="6">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SectionName" ShowInFilterControl="Default" VisibleIndex="7">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="EventDateRus" ShowInFilterControl="Default" VisibleIndex="8">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="EventDateKaz" ShowInFilterControl="Default" VisibleIndex="9">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ParticipantRus" ShowInFilterControl="Default" VisibleIndex="10">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ParticipantKaz" ShowInFilterControl="Default" VisibleIndex="11">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="TeamCount" ShowInFilterControl="Default" VisibleIndex="12">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="AthleteCount" ShowInFilterControl="Default" VisibleIndex="13">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="TrainerCount" ShowInFilterControl="Default" VisibleIndex="14">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="JudgeCount" ShowInFilterControl="Default" VisibleIndex="15">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="OrganizerRus" ShowInFilterControl="Default" VisibleIndex="16">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="OrganizerKaz" ShowInFilterControl="Default" VisibleIndex="17">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SenderRus" ShowInFilterControl="Default" VisibleIndex="18">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SenderKaz" ShowInFilterControl="Default" VisibleIndex="19">
                    </dx:TreeListTextColumn>
                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SortOrder" ShowInFilterControl="Default" VisibleIndex="20">
                    </dx:TreeListTextColumn>
                    <dx:TreeListDateTimeColumn AutoFilterCondition="Default" FieldName="CreatedDate" ShowInFilterControl="Default" VisibleIndex="21">
                    </dx:TreeListDateTimeColumn>
                    <dx:TreeListCheckColumn AutoFilterCondition="Default" FieldName="Editable" ShowInFilterControl="Default" VisibleIndex="22">
                    </dx:TreeListCheckColumn>
                </Columns>
<SettingsPopup>
<HeaderFilter MinHeight="140px"></HeaderFilter>
</SettingsPopup>
                <SettingsPager Position="TopAndBottom" PageSize="20" Mode="ShowPager">
		</SettingsPager>
		<SettingsBehavior AllowAutoFilter="True" AutoExpandAllNodes="False" DisablePartialUpdate="True" 
			AllowFocusedNode="True" FocusNodeOnExpandButtonClick="False" FocusNodeOnLoad="False" AllowSort="False">
		</SettingsBehavior>
		<SettingsCustomizationWindow PopupHorizontalAlign="RightSides" PopupVerticalAlign="BottomSides"></SettingsCustomizationWindow>
		<SettingsEditing EditFormColumnCount="1" Mode="EditFormAndDisplayNode" />
		<SettingsPopupEditForm VerticalOffset="-1"></SettingsPopupEditForm>
		<SettingsPopup>
			<EditForm VerticalOffset="-1"></EditForm>
		</SettingsPopup>
		<Settings ShowFilterRow="true" AutoFilterCondition="Contains" />
            </dx:aspxtreelist>
            <asp:SqlDataSource ID="dsTest" runat="server" ConnectionString="<%$ ConnectionStrings:MFKSConnectionString %>" 
                SelectCommand="SELECT [ID]
	, [RealID]
	, [ParentID]
	, [NameRus] AS [Name]
	, [NameRus]
	, [NameKaz]
	, [SectionID]
	, [SectionNameRus] AS [SectionName]
	, [EventDateRus]
	, [EventDateKaz]
	, [ParticipantRus]
	, [ParticipantKaz]
	, [TeamCount]
	, [AthleteCount]
	, [TrainerCount]
	, [JudgeCount]
	, [OrganizerRus]
	, [OrganizerKaz]
	, [SenderRus]
	, [SenderKaz]
	, [SortOrder]
	, [CreatedDate]
	, [Editable]

FROM [dbo].[GetYearlyPlanEvents](2019, 22, 0)"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
