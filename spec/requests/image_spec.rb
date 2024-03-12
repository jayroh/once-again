require 'rails_helper'

RSpec.describe "Image", type: :request do
  describe "GET #show" do
    it "it returns an image successfully" do
      get "/to-be-successful.jpg"

    end
  end
end
