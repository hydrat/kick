require 'spec_helper'

describe Sector do
  context "validates" do

    before do
      @sector = Sector.new(name: "Fixnetz") 
    end

    it "correctly with valid attributes" do
      @sector.should be_valid
    end

    it "presence of name" do
      @sector.name = nil
      @sector.should be_invalid   
    end
  end
end
