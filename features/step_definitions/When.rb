#I fill email_comentario input with email@gmail.com

When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

# I click on the submit button

When(/^[I ]*click on the ([^"]*) button$/) do |button|
  click_button(button)
end