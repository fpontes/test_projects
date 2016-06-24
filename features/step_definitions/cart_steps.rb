Given(/^search the sku "([^"]*)"$/) do |produt|
	fill_in('search', :with => (produt))
	click_button('input-search-bt')

end

When(/^click on product"([^"]*)"$/) do |produt|
	@nomeProd = produt
	sleep(2)
	find(:xpath, ".//*[@id='product14']/span").click
end

When(/^click "([^"]*)"$/) do |arg1|
	click_button('buy-now-button')
	sleep(2)
end

Then(/^the chosen product will be inserted into the cart$/) do
	produt = page.find(:css, ".title>a").text
	if page.has_css?('.base-title') == true and @nomeProd == produt
		puts "Produto inserido no carrinho corretamente"
	else
		raise ArgumentError, "Produto não inserido no carrinho, ou a aplicação não está na página do carrinho", caller
	end
end