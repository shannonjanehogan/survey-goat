class AddUserToSurveys < ActiveRecord::Migration[5.0]
  def change
    add_reference :surveys, :user, foreign_key: true
  end
end
