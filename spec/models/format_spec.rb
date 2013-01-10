require 'spec_helper'

describe Format do
  context "validates" do

    before do
      @format = Format.new(name: "A2") 
    end

    it "correctly with valid attributes" do
      @format.should be_valid
    end

    it "presence of name" do
      @format.name = nil
      @format.should be_invalid   
    end
  end
end
