{* 2012 - Autumn Prestashop Theme - Sercan YEMEN - www.withinpixels.com *}
<!DOCTYPE html>
<html lang="{$lang_iso}">
	<head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                    
                <title>{$meta_title|escape:'vhtmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}                
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
                
                {*Meta data for Facebook*}
                <meta property="og:title" content="{$meta_title|escape:'vhtmlall':'UTF-8'}" /> 
                {if isset($meta_description) AND $meta_description}<meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />{/if}
                {if isset($page_name) && $page_name == "product" && isset($have_image) && $have_image}<meta property="og:image" content="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')}" />{/if}
		
		<!-- Facebook Conversion Code for Schuhster -->
			<script language="javascript">
			{literal}
			(function() {
			var _fbq = window._fbq || (window._fbq = []);
			if (!_fbq.loaded) {
			var fbds = document.createElement('script');
			fbds.async = true;
			fbds.src = '//connect.facebook.net/en_US/fbds.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(fbds, s);
			_fbq.loaded = true;
			}
			})();
			window._fbq = window._fbq || [];
			window._fbq.push(['track', '6016405448974', {'value':'0.00','currency':'MYR'}]);
			{/literal}
			</script>
			<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6016405448974&amp;cd[value]=0.00&amp;cd[currency]=MYR&amp;noscript=1" /></noscript>
		
		

		
		
             {****************************Facebook Pixel added by lilin as requested by yxian****************************}
                 <script>{literal}(function() {
                 var _fbq = window._fbq || (window._fbq = []);
                 if (!_fbq.loaded) {
                 var fbds = document.createElement('script');
                 fbds.async = true;
                 fbds.src = '//connect.facebook.net/en_US/fbds.js';
                 var s = document.getElementsByTagName('script')[0];
                 s.parentNode.insertBefore(fbds, s);
                _fbq.loaded = true;
                 }
                _fbq.push(['addPixelId', '662821400513554']);
                })();
                window._fbq = window._fbq || [];
                window._fbq.push(['track', 'PixelInitialized', {}]);
                </script>
                <noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?id=662821400513554&amp;ev=PixelInitialized" />{/literal}</noscript>			
		
                <script>{literal}
                // ViewContent
                // Track key page views (ex: product page, landing page or article)
                fbq('track', 'ViewContent');
                {/literal}</script>

                 <script>{literal}
                // CompleteRegistration
                // Track when a registration form is completed (ex. complete subscription, sign up for a service)
                fbq('track', 'CompleteRegistration');
                 {/literal}</script>


		

		
{******************************EDITED BY LILIN TO REDIRECT USERS**************************}



                <script type='text/javascript' src='http://www.geolify.com/georedirect.php?id=8217'></script>


{******************************************************************************************}
					
		
		

			
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var baseUri = '{$base_uri}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>



		
		
		
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}

<!--[if IE 8]>
	<link rel="stylesheet" type="text/css" href="{$css_dir}ie8.css" />
<![endif]-->

{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}    
        {$HOOK_HEADER}
        
        {*Theme Options*}
        {$color_changer}
        {$logo_width}
	
	
	</head>
	<body itemscope itemtype="http://schema.org/WebPage" {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if} {if $content_only} content_only {/if}">


{**********************************ADDED BY LILIN AS REQUESTED BY ANTHONY***********************************************}

{literal}

<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TVVMHC"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TVVMHC');</script>
<!-- End Google Tag Manager -->

{/literal}

{*********************************************************************************************************}



	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
                <div id="wrapper" class="group">
                    
                    <div id="header-fluid" class="fluid-bg">
                        <div class="container">                                                                           
                            <!-- Header -->
                            <div id="header" class="column full">
                                <div id="header-logo">
                                    <a href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
                                        <img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" />
                                    </a>
                                </div>
                                
                                    <div id="header-right">
                                        {$HOOK_TOP}
                                    </div>
                            </div>
                        </div>
                    </div>
                                    
                    <div id="content-fluid" class="fluid-bg">
                        
                    {if $page_name == "index"}
                        
                        {if isset($slide_config)} {* Show the image slider only homepage *}
                            <script type="text/javascript">
                                $(window).load(function() {
                                    var s_effect = {$slide_config.effect};
                                    var s_animspeed = {$slide_config.anim_speed};
                                    var s_pausetime = {$slide_config.pause_time};
                                    
                                    $('#autumn-slider').nivoSlider({
                                        effect: s_effect,
                                        pauseTime: s_pausetime,
                                        animSpeed: s_animspeed,
                                        
                                        controlNav: false
                                    });
                                    
                                    $('#autumn-slider').touchwipe({
                                        wipeLeft: function() {
                                           $('a.nivo-nextNav').trigger('click');
                                        },

                                        wipeRight: function() {
                                           $('a.nivo-prevNav').trigger('click');
                                        },

                                        preventDefaultEvents: false
                                    });                                   
                                    
                                });
                            </script>
                        {/if}
                        
                        {if isset($slides) && isset($page_name) && $page_name == "index"}
                            <div id="autumn-slider" class="nivoSlider">
                                        {foreach from=$slides item=slide}
                                            {if $slide.is_active == 1}
                                                
                                                {if $slide.url != ""}<a class="nivo-imageLink" href="{$slide.url}">{/if}
                                                    <img src="{$smarty.const._MODULE_DIR_}/autumnslider/slides/{$slide.image}" />
                                                {if $slide.url != ""}</a>{/if}
                                                
                                            {/if}
                                        {/foreach}
                            </div>
                        {/if}
                        
                    {/if}
                                               
                        <div class="content container">
                            
                            <div class="column {if $HOOK_LEFT_COLUMN}two-third{else}full{/if}"><!-- Column -->
	{/if}