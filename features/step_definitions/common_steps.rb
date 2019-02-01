Given(/^the user (?:navigates to the|is on the) (.+) page$/) do |page_name|
  on_page(page_name.split(" ").map(&:capitalize).join("") + "Page")
end

And(/^the user clicks on (.*) (?:icon|tab|link|button)$/) do |element|
  @current_page.wait_until(15, "#{element} was not displayed within 15 seconds") { @current_page.send("#{element.strip.downcase.gsub(" ", "_")}_element").exist? }
  @current_page.send("#{element.strip.downcase.gsub(" ", "_")}_element").click
end
