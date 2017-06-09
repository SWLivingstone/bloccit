require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(body: 'Question Body', title: 'Question Title', resolved: true) }

  describe "attributes" do
    it "has body, title, and resloved attributes" do
      expect(question).to have_attributes(body: 'Question Body', title: 'Question Title', resolved: true)
    end
  end
end
