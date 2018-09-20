class CreateJoinTablePersonInscriptionClassification < ActiveRecord::Migration[5.1]
  def change  
    create_join_table :people, :inscriptions do |t|
      t.index [:person_id, :inscription_id], name: 'people_and_inscriptions'      
    end
    
    create_join_table :people, :classifications do |t|
      t.index [:person_id, :classification_id], name: 'people_and_classifications'            
    end

    create_join_table :inscriptions, :classifications do |t|
      t.index [:inscription_id, :classification_id], name: 'inscriptions_and_classifications'            
    end
  end
end