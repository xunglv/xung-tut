require 'spec_helper'

describe "words/edit.html.erb" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :new_record? => false,
      :word => "MyString"
    ))
  end

  it "renders the edit word form" do
    render

    rendered.should have_selector("form", :action => word_path(@word), :method => "post") do |form|
      form.should have_selector("input#word_word", :name => "word[word]")
    end
  end
end
