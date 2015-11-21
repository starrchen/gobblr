# Gobblr

~~Formerly known as Turkey Wurkey~~

*Gobblr* helps reduce Thanksgiving meal-planning anxiety by allowing the user to:
* Look at and choose tried-and-tested Thanksgiving-day recipes (c/o [SeriousEats] (http://www.seriouseats.com/thanksgiving) )
* Create and edit their own recipes
* Quickly identify all ingredients that are needed for selected recipes
* Save recipes for later meal planning

## Technologies Used

- HTML
- CSS
- Ruby
- Rails
- Heroku
- Git
- Devise (Ruby gem)

## Installation on Local Machine

1. Clone this repository: `git clone https://github.com/starrchen/gobblr.git`
2. Install Ruby gems: `bundle install`
3. Set up database:
```bash
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

A working deployed app is available [here](http://gobble-gobblr.herokuapp.com).

## Approach Taken

I began by thinking about how best to link two (2) tables I wanted to use: **recipes** and **ingredients**, which would have a _many-to-many_ relationship. (Recipes have many ingredients, ingredients can be used in many recipes.)

ERD can be found [here](https://github.com/starrchen/gobblr/blob/master/planning/erd.jpeg).

In the end, I decided the best way to join these two tables was through an **amount** table, where _quantity_ would be dependent on a recipe-ingredient relationship. I also incoroprated a **user** table and a **favorites** table, which was another join table for the many-to-many relationship between recipes and users. (Users can add many recipes to favorites; recipes can be added to favorites by many users.)

Wireframes can be found [here](https://github.com/starrchen/gobblr/tree/master/planning/wireframes).

From there, it was about deciding what kind of information was most useful to the user (ingredients, quantities, and directions on the recipe pages; recipes that used a given ingredient; all ingredients needed for saved recipes) and finagling the model associations to access that information from different areas in the app.

User stories can be found [here](https://github.com/starrchen/gobblr/blob/master/user_stories.md).

## Future Features*

If I had more time, here are some features I would add:

* **CanCanCan**: Just learned this in mini-lesson, but right now, users are able to edit/delete recipes that they did not create. I would like to implement CCC so that this is not the case. (As of now, users are not given the option on the page to edit/delete recipes, but can manually do so by typing `/edit` to the end of a recipe URL.)
* **Edit ingredient quantities**: Ran out of time to do this but would have continued building out the `amount` views to include editing and deleting ingredient quantities.
* **"My Recipes"**: Ran out of time to do this but would have an option next to "Starred" where users could access all recipes they created on Gobblr.
* **Flash alerts**: Ran out of time to do this but would have added flash notifications/alerts to prevent user from creating recipes without names/directions, etc. to improve UX.
* **Form improvement**: After talking with Tim about [his project](https://github.com/timothytgregg/QuotesApp), I want to try to make my forms more robust by enabling them to (1) Create a new ingredient if it doesn't already exist and (2) Add to multiple tables (recipe and amount) with one form.
