require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(body: 'Question Body', title: 'Question Title', resolved: true) }
  let(:answer) { Answer.create!(body: 'Answer Body', question: question)}

  describe "attributes" do
    it "has body and question attributes" do
      expect(answer).to have_attributes(body: 'Answer Body', question: question)
    end
  end
end
