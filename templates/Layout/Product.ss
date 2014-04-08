<% require css(themes/bootstrap_shop/css/product.css) %>
<div class="row">
	<div id="Sidebar" class="span2">
		<% with Parent %>
			<% include ProductMenu %>
		<% end_with %>
	</div>
	<div id="Product" class="typography span8">
		<div class="row">
			<div id="Breadcrumbs" class="span8">
				$Breadcrumbs
			</div>
		</div>
		<div class="row">
			<div class="productDetails span3">
				<% if Image.ContentImage %>
					<img class="productImage" src="$Image.ContentImage.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
				<% else %>
					<img class="productImage" src="http://placehold.it/300x200" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
				<% end_if %>
			</div>
			<% if Content %>
				<div class="typography span5">
					<div class="page-header">
						<h1 class="pageTitle">$Title</h1>
					</div>
					<% if InternalItemID %><p><% _t("CODE","Product Code") %>: {$InternalItemID}</p><% end_if %>
					<% if Model %><p><% _t("MODEL","Model") %>: $Model.XML</p><% end_if %>
					<% if Size %><p><% _t("SIZE","Size") %>: $Size.XML</p><% end_if %>
					<% include ProductAddToCart %>
					<div class="productContent">
						$Content
					</div>
				</div>
			<% end_if %>
		</div>
	</div>
	<div class="cart span2">
		<% include SideCart %>
	</div>
</div>

<script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery(document).pullRegionForURL('/shoppingcart/*', 'ProductAddToCart:BUYABLE');
	});
</script>