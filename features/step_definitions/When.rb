#I fill email_comentario input with email@gmail.com
When(/^[I ]*click on the ([^"]*) button$/) do |button|
  click(button)
end

When(/^I visit ([^"]*) link$/) do |link|
  visit(link)
end

When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

# I click on the submit button

# When(/^[I ]*click on the Enviar button$/) do |button|
#   click('Enviar')
# end