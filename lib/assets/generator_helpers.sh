# Generate Page model
bundle exec rails generate scaffold Page title:string description:rich_text slug:string alt_text:string meta_title:string meta_description:string meta_keywords:string

# Generate Destionation model
bundle exec rails generate scaffold Destination title:string description:rich_text

# Generate Media model that belongs to polymorphic model
bundle exec rails generate model Medium alt_text:string title:string description:rich_text attachable:references{polymorphic}

# Generate Guide/Driver model
bundle exec rails generate scaffold Guide name:string description:rich_text phone:string email:string user:references

# Generate Trip model
bundle exec rails generate scaffold Trip title:string description:rich_text guide:references

# Generate Itinerary model
