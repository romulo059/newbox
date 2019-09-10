class Asset < ApplicationRecord
    has_many :vulnerabilities
end