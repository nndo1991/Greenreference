# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    Rails.env.production? ? (primary_folder = "production") : (primary_folder = "test")

    "#{primary_folder}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Original image
  process :resize_to_fill => [260, 170]
  
  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fill => [65, 65]
  end


  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

protected
  
  def is_gallery_image? picture
    model.class.to_s.underscore == "gallery_image"
  end

end
