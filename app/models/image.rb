class Image < ApplicationRecord
    belongs_to :product

    validates_format_of :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file type", multiline: true

end

