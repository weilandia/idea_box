require_relative '../spec_helper.rb'

describe 'User filters by quality' do
  before(:each) do
    Fabricate(:idea, quality: "maybe")
    Fabricate(:idea, quality: "maybe")
    Fabricate(:idea, quality: "yes")
    Fabricate(:idea, quality: "yes")
    Fabricate(:idea, quality: "now")
    Fabricate(:idea, quality: "now")
  end
  
  it 'only shows maybe ideas' do
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end

    click_on("maybe")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 2)
    end

    click_on("all")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end
  end

  it 'only shows maybe ideas' do
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end

    click_on("yes")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 2)
    end

    click_on("all")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end
  end

  it 'only shows maybe ideas' do
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end

    click_on("now")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 2)
    end

    click_on("all")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 6)
    end
  end
end
