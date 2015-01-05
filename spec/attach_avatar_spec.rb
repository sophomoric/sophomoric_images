require 'spec_helper'
require_relative '../lib/attach_avatar'

describe AttachAvatar do
  let(:instance) do
    class Testing
      include AttachAvatar
    end
    Testing.new
  end

  it "works" do
    expect(1).to eq(1)
  end

end
