class AddTopicToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :topic_id, :integer
  end
end
