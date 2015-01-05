require 'spec_helper'
require_relative '../lib/sophomoric_images'

describe Croppable do
  let(:instance) do
    class Testing
      include Croppable
    end
    Testing.new
  end

  [:crop_x, :crop_y, :crop_w, :crop_h].each do |attr|
    describe "##{attr}" do
      it "is nil when nothing is set" do
        expect(instance.send(attr)).to eq(nil)
      end
    end
  end


  [:crop_x, :crop_y, :crop_w, :crop_h].each do |attr|
    describe "##{attr}=" do
      it "can be set to a number" do
        instance.send((attr.to_s + "="), 10)
        expect(instance.send(attr)).to eq(10)
      end
    end
  end

  describe "#cropping"
end