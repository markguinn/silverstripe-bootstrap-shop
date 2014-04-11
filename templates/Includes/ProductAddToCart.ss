<div id="ProductAddToCart$ID">
	<% if Variations %>
		$Form
	<% else %>
		<% if Price %>
			<% include PriceTag %>
		<% end_if %>
		<% if canPurchase %>
			<% if IsInCart %>
				<% with Item %>
					<div class="quantityBox">
						<span><% _t("QUANTITYCART","Quantity in cart") %>:</span> $QuantityField
						<div class="productActions">
							<a class="ajax btn" href="$removeallLink" title="<% sprintf(_t("REMOVE","Remove &quot;%s&quot; from your cart"),$Title) %>">
								<i class="icon-trash"></i>
								<% _t("REMOVELINK","Remove from cart") %>
							</a>
							<a class="btn btn-success" href="$checkoutLink" title="<% _t("GOTOCHECKOUT","Go to the checkout now") %>">
								<i class="icon-shopping-cart icon-white"></i>
								<% _t("GOTOCHECKOUTLINK","Go to the checkout") %>
							</a>
						</div>
					</div>
				<% end_with %>
			<% else %>
				<a href="$addLink" class="ajax btn btn-success btn-large" title="<% sprintf(_t("ADD","Add &quot;%s&quot; to your cart"),$Title) %>">
					<i class="icon-plus-sign icon-white"></i>
					<% _t("ADDLINK","Add to Cart") %>
				</a>
			<% end_if %>
		<% end_if %>
	<% end_if %>
</div>
