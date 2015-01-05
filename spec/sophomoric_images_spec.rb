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

  describe "#cropping?" do
    it "returns false if no attribute ivar is set" do
      expect(instance.cropping?).to eq(false)
    end

    it "returns true if all ivars set" do
      instance.crop_x = 10
      instance.crop_y = 10
      instance.crop_w = 100
      instance.crop_h = 100
      expect(instance.cropping?).to eq(true)
    end
  end

  describe "#reprocess_avatar" do
    it "calls the paperclip method reprocess on the avatar" do
      avatar = spy("avatar")
      instance.reprocess(avatar)
      expect(avatar).to have_received("reprocess!")
    end
  end
end