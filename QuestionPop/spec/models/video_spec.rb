require 'spec_helper'
  
describe Video do
  
  subject(:video) { Video.new }

  it "should have a url" do
    should_not be_valid
  end
 
  context "valid video" do
    subject(:video) { FactoryGirl.create(:video) }

    its(:url) { should match(/www.youtube.com/) }
    it "should respond to questions" do
      assert_respond_to video, :questions
    end

    context "with a question" do
      question = FactoryGirl.create(:question)
      subject(:video_with_question) { question.video }
      its('questions.count') { should == 1 }
    end
  end

end
