class CreateInscripciones < ActiveRecord::Migration[5.0]
  def change
    create_table :inscripciones do |t|
      t.string :id_inscripcion
      t.string :documento
      t.string :curso
      t.integer :estrato
      t.integer :valor_credito

      t.timestamps
    end
  end
end
