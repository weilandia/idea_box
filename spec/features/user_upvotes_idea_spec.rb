require_relative '../spec_helper.rb'

describe 'User upvotes ideas' do
  it 'updates idea in database and DOM' do
    Fabricate(:idea)
    visit '/'

    within(".ideas") do
      expect(page).to have_content("maybe")
      expect(Idea.first.quality).to eq("maybe")

      find(".upvote").click

      expect(page).to_not have_content("maybe")
      expect(page).to have_content("yes")
      expect(Idea.first.quality).to eq("yes")

      find(".upvote").click

      expect(page).to_not have_content("yes")
      expect(page).to have_content("now")
      expect(Idea.first.quality).to eq("now")

      find(".upvote").click

      expect(page).to_not have_content("yes")
      expect(page).to have_content("now")
      expect(Idea.first.quality).to eq("now")
    end
  end
end
