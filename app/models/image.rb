class Image < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader
  validates :image_file, :presence => true

  def encrypt
    logger.info "*****#{self.image_file}******"
    GPGME::Key.import(File.open(ENV.fetch 'KEY_FILE'))
    crypto = GPGME::Crypto.new(:password => ENV.fetch('KEY_FILE_PASSWORD'))
    self.image_file = crypto.encrypt(@image_file)
  end
end
