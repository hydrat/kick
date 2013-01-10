require "spec_helper"

describe Package do

  context "validates" do

    before do
      format = mock_model("Format")
      @package = Package.new(name: "Beirut", nummer: "101", format_id: format.id) 
    end

    it "correctly with valid attributes" do
      @package.should be_valid
    end

    it "presence of name" do
      @package.name = nil
      @package.should be_invalid      
    end

    it "presence of nummer" do
      @package.nummer = nil
      @package.should be_invalid   
    end

    it "presence of format" do
      @package.format = nil
      @package.should be_invalid
    end
  end

end