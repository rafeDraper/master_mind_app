# frozen_string_literal: true
require './models/mastermind_model'

RSpec.describe Mastermind do

  context "creating" do
    context "when a role is specified" do
      it "uses that role" do
        role = 'codebreaker'
        mastermind = Mastermind.new("codebreaker")
        mastermind.role.should == role
      end
    end
  end
  
end
