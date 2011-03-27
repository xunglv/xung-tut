require 'spec_helper'

describe "words/new.html.erb" do
  before(:each) do
    assign(:word, stub_model(Word,
      :new_record? => true,
      :word => "MyString"
    ))
  end

  it "renders new word form" do
    render

    rendered.should have_selector("form", :action => words_path, :method => "post") do |form|
      form.should have_selector("input#word_word", :name => "word[word]")
    end
  end
end
