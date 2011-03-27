require 'spec_helper'

describe "words/index.html.erb" do
  before(:each) do
    assign(:words, [
      stub_model(Word,
        :word => "Word"
      ),
      stub_model(Word,
        :word => "Word"
      )
    ])
  end

  it "renders a list of words" do
    render
    rendered.should have_selector("tr>td", :content => "Word".to_s, :count => 2)
  end
end
