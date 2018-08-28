<#------ Define services ----------------------------------------------------------------------------------------------------------------->

<#assign expandoValueLocalService = serviceLocator.findService("com.liferay.expando.kernel.service.ExpandoValueLocalService") />

<#------ Define variables ----------------------------------------------------------------------------------------------------------------->

<#assign show_breadcrumbs = true />

<#------ Expando values ----------------------------------------------------------------------------------------------------------------->

<#assign footer_col_1_article_id = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "footer-col-1-article-id", group_id, "")  />
<#assign footer_col_2_article_id = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "footer-col-2-article-id", group_id, "")  />
<#assign footer_col_3_article_id = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "footer-col-3-article-id", group_id, "")  />

<#assign top_nav_article_id = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "top-nav-article-id", group_id, "")  />

<#assign social_add_this_profile_id = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "social-add-this-profile-id", group_id, "")  />

<#assign social_add_this_services = expandoValueLocalService.getData(company_id, "com.liferay.portal.kernel.model.Group", "CUSTOM_FIELDS", "social-add-this-services", group_id, "")  />

<#------ Theme Settings ----------------------------------------------------------------------------------------------------------------->

<#--
-->
	<#if theme_display.getThemeSetting("show-breadcrumbs") == "false">
		<#assign show_breadcrumbs = false />
	</#if>


<#------ Permissions Checker ----------------------------------------------------------------------------------------------------------------->

<#--
<#assign permission_checker = theme_display.getPermissionChecker() />

<#assign is_scope_group_admin = permission_checker.isGroupAdmin(group_id) />
<#assign is_scope_group_owner = permission_checker.isGroupOwner(group_id) />

<#assign is_omni_admin = permission_checker.isOmniadmin() />
-->

<#------ Page Edit Mode ----------------------------------------------------------------------------------------------------------------->
<#------ Whether or not portlet titles and other UI components should be displayed. Also used to show/hide dockbar.  ------>

<#--
<#assign show_page_edit = false />
-->

<#-- Include Omni Admin -->
<#--
<#assign show_page_edit = show_page_edit || is_omni_admin />
-->

<#-- Include Scope Group Owner -->
<#--
<#assign show_page_edit = show_page_edit || is_scope_group_owner />
-->

<#-- Include Scope Group Admin -->
<#--
<#assign show_page_edit = show_page_edit || is_scope_group_admin />
-->

<#--
<#if show_page_edit>
	<#assign css_class = css_class + " page-edit dockbar-split" />
</#if>

<#assign foo = "boo" />
-->

<#------ Macros -------------------------------------------------->

<#-- Include Web Content Display portlet in theme. attribute: group_id is long, article_id is String-->

<#macro includeWCD group_id article_id>
	<#if article_id != "">

		<#local portlet_instance_suffix = "gothiaforum" />
		<#local instance_id = "wcd" + article_id + portlet_instance_suffix />
		<#local instance_id = instance_id?substring(0, 12) />

    <#assign VOID = freeMarkerPortletPreferences.reset() />
    <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
    <#assign VOID = freeMarkerPortletPreferences.setValue("groupId", group_id?c) />
    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", article_id) />

    <@liferay_portlet["runtime"]
        defaultPreferences = "${freeMarkerPortletPreferences}"
        instanceId = "${instance_id}"
        portletName = "com_liferay_journal_content_web_portlet_JournalContentPortlet"
    />

    <#assign VOID = freeMarkerPortletPreferences.reset() />

	<#else>
		&nbsp;
	</#if>
</#macro>
