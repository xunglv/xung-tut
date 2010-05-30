require 'spec_helper'

describe ServicesController do

  #Delete these examples and add some real ones
  it "should use ServicesController" do
    controller.should be_an_instance_of(ServicesController)
  end


  describe "GET 'dict'" do
    it "should be successful" do
      get 'dict'
      response.should be_success
    end
  end
end
