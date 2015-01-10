# SophomoricImages

#Usage

Ruby on Rails

Include these modules in a rails model

```ruby
class User
include AttachAvatar
include Croppable
```

or if a user has many photos
```ruby
class User
  has_many :photos
end

class Photo
  belongs_to :user
  include AttachAvatar
  include Croppable
```
