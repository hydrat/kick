require 'spec_helper'

describe Location do

  context "validates" do

    before do
      @location = Location.new(name: "Aussenwand") 
    end

    it "correctly with valid attributes" do
      @location.should be_valid
    end

    it "presence of name" do
      @location.name = nil
      @location.should be_invalid   
    end
  end
end
