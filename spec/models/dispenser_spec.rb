require 'spec_helper'

describe Dispenser do
  context "validates" do

    before do
      @dispenser = Dispenser.new(name: "A2") 
    end

    it "correctly with valid attributes" do
      @dispenser.should be_valid
    end

    it "presence of name" do
      @dispenser.name = nil
      @dispenser.should be_invalid   
    end
  end
end
