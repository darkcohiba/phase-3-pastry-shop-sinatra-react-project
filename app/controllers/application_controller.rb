class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get "/pastries" do
    pastry_all = Pastry.all
    pastry_all.to_json
  end

  get "/pastry/:name" do
    pastry = Pastry.where("name LIKE ?", "%#{params[:name]}%")
    pastry.to_json
  end

  get "/recipe/:name" do
    recipe = Recipe.where("name LIKE ?", "%#{params[:name]}%")
    recipe.to_json
  end

  get "/top" do
    recipe_top = Recipe.order(:rating).limit(2)
    recipe_top.to_json
  end

  get "/recipes" do
    recipe_all = Recipe.all
    recipe_all.to_json
  end

  # get "/userrecipes/:name" do
  #   user_recipes = Recipe.where("name LIKE ?", "%#{params[:name]}%")
  #   user_recipes.to_json
  # end

  post "/create-recipe" do
    new_recipe = Recipe.create(pastry_id: params[:id], name: params[:name], user_id: params[:user_id], description: params[:description], prep_time: params[:pre_time], bake_time: params[:bake_time], total_time: params[:total_time], recipe_ingredients: params[:ingredients], recipe_instructions: params[:recipe_instructions])
    new_recipe.to_json
  end

  post "/add-pastry" do
    new_pastry = Pastry.create(
      photo: params[:photo],
      name: params[:name],
      description: params[:description]
    )
    new_pastry.to_json
  end

  post "/add-user" do
    new_user = User.create(
      name: params[:name]
    )
  end

  post "/add-country" do
    new_country = Country.create(
      flag: params[:flag],
      name: params[:name],
      capital_city: params[:capital_city]
    )
  end
end
