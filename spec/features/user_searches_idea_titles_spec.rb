require_relative '../spec_helper.rb'

describe 'User searches idea title' do
  it 'page only show ideas that include query' do
    Fabricate(:idea, title: "Abcde", body: "")
    Fabricate(:idea, title: "Bcde", body: "")
    Fabricate(:idea, title: "CDE", body: "")
    Fabricate(:idea, title: "de", body: "")
    Fabricate(:idea, title: "E", body: "")
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 5)
      expect(page).to have_content("e")
    end

    fill_in("idea-search", with: "abcD")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
      expect(page).to have_content("Abcde")
    end

    fill_in("idea-search", with: "bcD")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 2)
      expect(page).to have_content("Abcde")
      expect(page).to have_content("Bcde")
    end
  end
end
