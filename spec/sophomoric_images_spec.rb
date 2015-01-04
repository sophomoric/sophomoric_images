require 'spec_helper'
require_relative '../lib/sophomoric_images'

describe Testing do

  it "is set up correctly" do
    expect(Testing.hi).to eq("hi")
  end
end