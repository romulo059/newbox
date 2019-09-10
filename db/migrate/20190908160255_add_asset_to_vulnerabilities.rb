class AddAssetToVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :vulnerabilities, :asset, foreign_key: true
  end
end
