class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :description, presence: true, length: { in: 10..500 }
    # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file type", multiline: true

    belongs_to :supplier
    # def supplier
    #     supplier = Supplier.find_by(id: supplier_id)
    #     return supplier
    # end
    def is_discounted?
        price <= 10
    end

    def tax
        tax = price * 0.09
    end

    def total 
       total = price + tax 
    end
end
