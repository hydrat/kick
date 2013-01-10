require "spec_helper"

describe Space do

  context "validates" do

    before do
      @space = Space.new(nummer: "101") 
    end

    it "correctly with valid attributes" do
      @space.should be_valid
    end


    it "presence of nummer" do
      @space.nummer = nil
      @space.should be_invalid   
    end
  end

end