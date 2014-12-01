Given(/^Je visite la page "(.*?)"$/) do |link|
  #puts link
  visit('/static_pages/' + link.downcase)
end

Given(/^Je clique sur le lien "(.*?)"$/) do |link|
  click_link link
  #puts "page.title= #{page.title}"
end

Then(/^Je vois "(.*?)"$/) do |text|
  #expect(page).to have_content(text)
  expect(page).to have_content text
end


Then(/^Je vois un lien vers "(.*?)"$/) do |link|
  expect(page).to have_link(link)
end

Then(/^Je devrais pouvoir suivre le lien vers "(.*?)"$/) do |link|
  expect(page).to have_link(link)
  #visit(link.downcase)
  click_link link
end

Then(/^Le titre de la page est "(.*?)"$/) do |arg1|
  expect(page).to have_selector('title',
                                text: arg1,
                                visible: false)

  #puts page.title
  #expect(page.title).to eq(arg1)
end



