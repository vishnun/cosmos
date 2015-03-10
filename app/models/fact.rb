class Fact < ActiveRecord::Base
  has_attached_file :image,
                    storage: :dropbox,
                    dropbox_credentials: Rails.root.join('config/dropbox.yml'),
                    dropbox_visibility: 'public',
                    dropbox_options: {environment: ENV["RACK_ENV"]},
                    styles: {medium: '300x300>', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
