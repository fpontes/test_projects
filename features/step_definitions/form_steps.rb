Given(/^access the url "([^"]*)"$/) do |arg1|
visit(arg1)
window = Capybara.current_session.driver.browser.manage.window
window.maximize
sleep(2)

end

Given(/^click on "([^"]*)"$/) do |arg1|
	find(:xpath, "html/body/div[3]/div/div[2]/div/div[2]/nav/section/ul/li[4]/a").click
end

Given(/^fill name and e\-mail$/) do
	fill_in('name', :with => FFaker::NameBR.name)
	fill_in('email', :with => FFaker::Internet.email)
end

Given(/^write a message$/) do

	fill_in('vmensagem', :with => "testemensagem")
end

When(/^click on button "([^"]*)"$/) do |arg1|
	find(:xpath, "html/body/div[5]/div[1]/div/div/div[1]/form/div[4]/div/input").click

end

Then(/^I hope to get the message "([^"]*)"$/) do |alerta|
	page.should have_content(alerta)

end
