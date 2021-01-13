Rails JS Game Review App Backend
/*
t.string :name
t.references :user
*/
Game
  belongs_to :user
  has_many :reviews


/*
t.string :name
t.text :review_post
t.references :user
t.references :todo_list
*/
Reviews
 belongs_to :user
 belongs_to :game

