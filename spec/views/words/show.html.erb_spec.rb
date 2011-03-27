require 'spec_helper'

describe "words/show.html.erb" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :word => "Word"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Word".to_s)
  end
end
