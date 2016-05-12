require_relative '../spec_helper.rb'

describe 'User edits idea tbody' do
  it 'updates idea in database and DOM' do
    Fabricate(:idea)
    visit '/'

    find(".body").click

    expect(page).to have_css("textarea.edit")
    fill_in("edit-body", with: "new body")
    find('.ideas').native.send_keys(:return)

    expect(page).to have_content("new body")
    expect(Idea.first.body).to eq("new body")
  end
end
