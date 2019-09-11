class Asset < ApplicationRecord
    has_many :vulnerabilities

    validates :name, presence:true
    validates :description, presence:true
    validates :os, presence:true
end