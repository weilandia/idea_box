require_relative '../spec_helper.rb'

describe 'User visits root' do
  it 'shows existing ideas' do
    10.times do
      Fabricate(:idea)
    end
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 10)

      Idea.each do |idea|
        expect(page).to have_content(idea.title)
        expect(page).to have_content(idea.body)
      end

      expect(page).to have_content("maybe")
    end
  end
end
