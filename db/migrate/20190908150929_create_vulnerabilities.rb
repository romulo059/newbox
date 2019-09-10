class CreateVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vulnerabilities do |t|
      t.string :name
      t.string :description
      t.string :criticality
      t.string :solution
      t.integer :cvss_score

      t.timestamps
    end
  end
end
