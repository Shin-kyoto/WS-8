class RemovePostdateFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :post_date, :datetime
  end
end
