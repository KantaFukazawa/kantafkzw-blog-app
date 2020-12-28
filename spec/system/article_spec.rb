require 'rails_helper'

RSpec.describe 'Article', type: :system do
  let!(:user) { create(:user) }
  let!(:article) { create_list(:article, 3, user: user) }

  it '記事一覧が表示される' do
    visit root_path
    article.each do |article|
      expect(page).to have_css('.card_title', text: article.title)
    end
  end

  it '記事詳細を表示できる' do
    visit root_path

    article = article.first
    click_on article.title

    expect(page).to have_css('.card_title', text: article.title)
    expect(page).to have_css('.card_content', text: article.content.to_plain_text)
  end
end