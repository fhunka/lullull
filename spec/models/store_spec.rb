require 'spec_helper'

describe Store do
  before(:all) do
    @store = Store.new
  end
  context "Creating a new store"
  it "should have a name" do
    @store.name = "I like MongoDB!"
    @store.name.should == "I like MongoDB!"
  end
end