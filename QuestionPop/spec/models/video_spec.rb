require 'spec_helper'
  
describe Video do
  
  subject(:video) { FactoryGirl.create(:video) }

  it "should have a url" do
    video.url = nil
    should_not be_valid
  end
  
  its(:url) { should match(/www.youtube.com|www.vimeo.com/) }

  it "should respond to questions" do
    assert_respond_to video, :questions
  end

  context "with one question" do
    question = FactoryGirl.create(:question)
    subject(:video_with_question) { question.video }
    
    its('questions.count') { should == 1 }
  end

  it "should respond to user" do
    assert_respond_to video, :user
  end

  it "should have a user" do
    video.user = nil
    should_not be_valid
  end
  
  it "should increment count after save" do
    new_video = FactoryGirl.build(:video)
    expect { new_video.save }.to change { Video.count }.by(1)
  end
  
end
