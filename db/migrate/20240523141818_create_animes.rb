class CreateAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :animes do |t|
      t.integer :mal_id
      t.string :title_eng
      t.string :title_jap
      t.integer :episodes
      t.integer :year
      t.string :image
      t.string :trailer

      t.timestamps
    end
  end
end
