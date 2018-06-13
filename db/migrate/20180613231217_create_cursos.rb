class CreateCursos < ActiveRecord::Migration[5.0]
  def change
    create_table :cursos do |t|
      t.string :id_materia
      t.string :nombre
      t.integer :num_creditos
      t.integer :cupo_max
      t.integer :cupo_min

      t.timestamps
    end
  end
end
