<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<script type="text/javascript" src="${javascript_folder}/pojs.js"></script>

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<header class="main-header container">

	<div class="header-inner">
		<div class="logotype">
			<a href="/">
				<#assign logo_src = images_folder + "/theme/logo/gothia-forum-logo.png" />
				<#assign logo_src_responsive = images_folder + "/theme/logo/gothia-forum-logo-responsive.png" />

				<img class="normal" src="${logo_src}">
				<img class="responsive" src="${logo_src_responsive}">
			</a>
		</div>
		<div id="topNavigation" class="top-nav-wrap">
			<@includeWCD group_id top_nav_article_id />
		</div>
		<a href="#navigationTrigger" id="navigationTrigger">
			<i class="icon-reorder"></i>
			<span>Meny </span>
    </a>
	</div>

	<#if has_navigation || is_signed_in>
		<nav id="navigation" role="navigation">
			<#include "${full_templates_path}/navigation.ftl" />
		</nav>
	</#if>

	<#include "${full_templates_path}/navigation_mobile.ftl" />

</header>

<div id="wrapper" class="container">

	<#if show_breadcrumbs>
		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>
	</#if>


	<#if selectable>
		<@liferay_util["include"] page=content_include />
	<#else>
		${portletDisplay.recycle()}

		${portletDisplay.setTitle(the_title)}

		<@liferay_theme["wrap-portlet"] page="portlet.ftl">
			<@liferay_util["include"] page=content_include />
		</@>
	</#if>

</div>


<#include "${full_templates_path}/footer.ftl" />

<#--
<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading">
			<h1 class="site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</h1>
		</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>
</div>
-->

<@liferay_util["include"] page=body_bottom_include />

<script type="text/javascript" src="${javascript_folder}/custom-admin-controls.js"></script>

<script type="text/javascript" src="${javascript_folder}/jquery/owl.carousel.min.js"></script>
<script type="text/javascript" src="${javascript_folder}/jq.js"></script>


<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>
