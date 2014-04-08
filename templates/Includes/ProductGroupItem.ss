<li class="productItem span2 thumbnail" id="ProductGroupItem$ID">
	<% if Image %>
		<a href="$Link" title="<% sprintf(_t("READMORE","Click here to read more on &quot;%s&quot;"),$Title) %>">
			<img src="$Image.Thumbnail.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
		</a>
	<% else %>
		<a class="noimage" href="$Link" title="<% sprintf(_t("READMORE","Click here to read more on &quot;%s&quot;"),$Title) %>>">
			<img src="http://placehold.it/140x100" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
		</a>
	<% end_if %>
	<div class="caption">
		<h5 class="title"><a href="$Link" title="<% sprintf(_t("READMORE"),$Title) %>">$Title.LimitCharacters(45,..)</a></h5>
		<div class="price"><% if Price %><strong class="price">$Price.Nice</strong> <span class="currency">$Currency</span><% end_if %></div>
		<div class="actions">
			<a class="btn btn-mini" href="$Link" title="<% sprintf(_t("VIEW","View &quot;%s&quot;"),$Title) %>">
				<i class="icon-eye-open"></i>
				<% _t("VIEW","View") %>
			</a>
			<% if canPurchase %>
				<% if IsInCart %>
					<% with Item %>
						<a class="btn btn-mini" data-target="ajax" href="$removeallLink" title="<% sprintf(_t("REMOVE","Remove &quot;%s&quot; from your cart"),$Product.Title) %>">
							<i class="icon-trash"></i>
							<% _t("REMOVELINKSHORT","Remove") %>
						</a>
					<% end_with %>
				<% else %>
					<a class="btn btn-primary btn-mini" data-target="ajax" href="$addLink" title="<% sprintf(_t("ADD","Add &quot;%s&quot; to your cart"),$Title) %>">
						<i class="icon-shopping-cart icon-white"></i>
						<% _t("ADDLINK","Add") %>
					</a>
				<% end_if %>
			<% end_if %>
		</div>
	</div>
</li>