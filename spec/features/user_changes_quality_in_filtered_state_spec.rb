d ru  require_relative '../spec_helper.rb'

describe 'User changes quality in fitered state' do
  it 'removes idea from maybe filter when upvoted' do
    Fabricate(:idea, quality: "maybe")
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
    end

    click_on("maybe")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
      find(".upvote").click
      expect(page).to have_css('div.idea', count: 0)
    end

    click_on("yes")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
    end
  end

  it 'removes idea from yes filter when downvoted' do
    Fabricate(:idea, quality: "yes")
    visit '/'

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
    end

    click_on("yes")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
      find(".downvote").click
      expect(page).to have_css('div.idea', count: 0)
    end

    click_on("maybe")

    within('div.ideas') do
      expect(page).to have_css('div.idea', count: 1)
    end
  end
end
