module Croppable
  def self.included(base)
    base.send(:attr_accessor, :crop_x, :crop_y, :crop_w, :crop_h)
  end
end