require_relative '../spec_helper.rb'

describe 'User edits idea title' do
  it 'updates idea in database and DOM' do
    Fabricate(:idea)
    visit '/'

    find(".title").click

    expect(page).to have_css("input.edit")
    fill_in("edit-title", with: "new title")
    find('.ideas').native.send_keys(:return)

    expect(page).to have_content("new title")
    expect(Idea.first.title).to eq("new title")
  end
end
