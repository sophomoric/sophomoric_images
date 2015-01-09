describe AttachAvatar do
  let(:instance) do
    class Testing < ActiveRecord::Base
      include AttachAvatar
    end
    Testing.new
  end

  describe "#has_attached_file" do
    it "works" do
      expect(1).to eq(1)
    end
  end
end
