require_relative '../spec_helper.rb'

describe 'User downvotes ideas' do
  it 'updates idea in database and DOM' do
    Fabricate(:idea)
    Idea.first.update(quality: "now")

    visit '/'

    within(".ideas") do
      expect(page).to have_content("now")
      expect(Idea.first.quality).to eq("now")
    end

    find(".downvote").click

    within(".ideas") do
      expect(page).to_not have_content("now")
      expect(page).to have_content("yes")
      expect(Idea.first.quality).to eq("yes")
    end

    find(".downvote").click

    within(".ideas") do
      expect(page).to_not have_content("yes")
      expect(page).to have_content("maybe")
      expect(Idea.first.quality).to eq("maybe")
    end

    find(".downvote").click

    within(".ideas") do
      expect(page).to_not have_content("yes")
      expect(page).to have_content("maybe")
      expect(Idea.first.quality).to eq("maybe")
    end
  end
end
