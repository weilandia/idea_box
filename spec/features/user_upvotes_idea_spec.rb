require_relative '../spec_helper.rb'

describe 'User upvotes ideas', js: true, type: :feature do
  it 'updates idea in database and DOM' do
    idea = Fabricate(:idea)
    visit '/'

    expect(page).to have_content("maybe")
    expect(idea.quality).to eq("maybe")

    find(".upvote").click

    expect(page).to_not have_content("maybe")
    expect(page).to have_content("yes")
    expect(idea.quality).to eq("yes")

    find(".upvote").click

    expect(page).to_not have_content("yes")
    expect(page).to have_content("now")
    expect(idea.quality).to eq("now")
  end
end
