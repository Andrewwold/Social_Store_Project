# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumbnail do
   process :resize_to_fill => [40, 40]
  end

  version :profile_size do
   process :resize_to_fill => [200, 200]
  end

  def extension_white_list
   %w(jpg jpeg gif png)
  end
end