require "spec_helper"
require "rails_helper"

RSpec.describe Article do

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "return the article title" do
      article = create(:article, title: 'hello')

      expect(article.subject).to eq 'hello'
    end
  end

end
