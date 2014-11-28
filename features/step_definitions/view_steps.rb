Given(/^Je visite la page Accueil$/) do
  visit('static_pages/accueil')
end

Then(/^Je devrais voir "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end
