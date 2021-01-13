Rails JS Game Review App Backend

For the beginning of this build, we followed along with the [Rails Devise JWT Tutorial](https://github.com/dakotalmartinez/rails-devise-jwt-tutorial)

```
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
t.references :game
*/
Review
 belongs_to :user
 belongs_to :game
```

```
rails g scaffold Game name user:references
```

```
rails g scaffold Review name review_post:text user:references game:references
```
Hello