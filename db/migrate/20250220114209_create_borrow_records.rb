class CreateBorrowRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :borrow_records do |t|
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :borrowed_on
      t.date :due_date
      t.date :returned_on

      t.timestamps
    end
  end
end
