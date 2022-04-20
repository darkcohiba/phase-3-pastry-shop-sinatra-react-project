require 'faker'

puts "destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy destroy"

User.destroy_all
Country.destroy_all
Recipe.destroy_all
Pastry.destroy_all


puts "🌱 Seeding sugar and flour..."


puts "users users"
u1 = User.create(name: "Brown Eyed Baker")
u2 = User.create(name: "Serious Eats")
u3 = User.create(name: "Beth")
u4 = User.create(name: "The Darling Gourmet")
u5 = User.create(name: "All Recipes")

puts "Creating countries..."


c1 = Country.create(flag: "https://www.worldometers.info/img/flags/fr-flag.gif", name: "France", capital_city: "Paris")
c2 = Country.create(flag: "https://www.worldometers.info/img/flags/uk-flag.gif", name: "England", capital_city: "London")
c3 = Country.create(flag: "https://www.worldometers.info/img/flags/gm-flag.gif", name: "Germany", capital_city: "Berlin")


puts "pastries pastries..."
p1 = Pastry.create(photo: "https://www.seriouseats.com/thmb/VrMhjEnS2NuMapA9-AaObsBCIds=/880x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2020__12__20201210-choux-gougeres-vicky-wasik-2-4-204873092b4e472cb23ca7abbe8a6972.jpg", name: "Gougères", description: "A gougère, in French cuisine, is a baked savory choux pastry made of choux dough mixed with cheese. There are many variants. The cheese is commonly grated Gruyère, Comté, or Emmentaler, but there are many variants using other cheeses or other ingredients. ", country_id: c1.id)
p2 = Pastry.create(photo: "https://www.daringgourmet.com/wp-content/uploads/2016/12/Mandelhornchen-5-edited.jpg", name: "Mandelhörnchen" , description: "Mandelhörnchen. Known commonly as almond horns, these chewy almond cookies are dipped in chocolate and sprinkled with sliced almonds for enhanced texture and flavor.", country_id: c3.id)
p3 = Pastry.create(photo: "https://www.browneyedbaker.com/wp-content/uploads/2019/03/kouign-amann-27-754.jpg", name: "Kouign-amann", description: "Kouign-amann is a sweet Breton cake, made with laminated dough. It is a round multi-layered cake, originally made with bread dough, containing layers of butter and incorporated sugar, similar in fashion to puff pastry, albeit with fewer layers", country_id: c1.id)
p4 = Pastry.create(photo: "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_4:3/k%2FPhoto%2FRecipe%20Ramp%20Up%2F2022-02-Pasty%2FIMG_5681", name: "Pasty", description: "A pasty is a British baked pastry, a traditional variety of which is particularly associated with Cornwall, South West England but has spread all over the British Isles.", country_id: c2.id)
p5 = Pastry.create(photo: "https://static.fanpage.it/wp-content/uploads/sites/22/2020/06/Croissant24-1200x1200.jpg", name: "Croissant", description: "A pasty is a British baked pastry, a traditional variety of which is particularly associated with Cornwall, South West England but has spread all over the British Isles.A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, but mostly associated with France. Croissants are named for their historical crescent shape and, like other viennoiseries, are made of a layered yeast-leavened dough.", country_id: c1.id)
p6 = Pastry.create(photo: "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/63/2012/12/pretzel.jpg", name: "Pretzel", description: "A pretzel, from dialectal German pronunciation, standard German: Breze is a type of baked bread made from dough that is commonly shaped into a knot. The traditional pretzel shape is a distinctive symmetrical form, with the ends of a long strip of dough intertwined and then twisted back onto itself in a particular way.", country_id: c3.id)

puts "Creating recipes..."
r1 = Recipe.create(pastry_id: p3.id, name: "Kouign-Amann", user_id: u1.id, rating: 4.73, description: "Kouign-Amann are made with sugared, laminated dough baked in muffin tins. Part sticky bun and part sugared croissant, these are delicious! This recipe includes tons of step-by-step photos and recipe notes so you can make these amazing pastries at home, too!", prep_time: "6 hours", bake_time: "45 minutes", total_time: "6 hours and 45 minutes", recipe_ingredients: "For the Dough:
1 cup (240 ml) water, at room temperature
2 teaspoons instant yeast
2½ cups (355 g) all-purpose flour
1 teaspoon salt
For the Butter Block:
8 ounces (227 g) salted butter, chilled and cubed
For the Pastries:
1½ cups (298 g) granulated sugar, divided", recipe_instructions:
"Step 1
Combine water, sugar, and yeast in a bowl. Let rest until foamy, about 5 minutes.

Step 2
Add melted butter, 2 cups flour, and salt to the yeast mixture. Stir with a wooden spoon to form a very sticky dough. Dust your work surface with remaining 1/2 cup flour.

Step 3
Turn dough out onto the floured counter. Knead, folding in the excess flour as needed, until dough is soft, slightly sticky, and elastic. Place in a greased bowl. Cover and let rise in a warm place until doubled in volume, about 1 1/2 hours.

Step 4
Combine sugar and most of the sea salt together in a bowl. Mix, taste, and add more salt as needed.

Step 5
Butter a 12-cup muffin tin. Spoon some of the seasoned sugar into the cups and shake to coat. Turn tin over and return excess sugar to the bowl.

Step 6
Transfer dough onto a floured surface and press into a rough rectangle. Roll dough into a rectangle about 1/8- to 1/4-inch thick. Grate cold butter onto the dough, leaving a 1-inch border. Flatten butter using lightly floured hands. Fold rectangle widthwise into thirds. Press gently to square out the edges. Place dough onto a silicone-lined baking sheet. Wrap in plastic and refrigerate for 30 minutes.

Step 7
Roll dough into a large rectangle again, pulling and stretching the corners as needed. Grate the second stick of butter over the surface. Pat down with floured fingers and fold into thirds. Roll back out into a rectangle and fold into thirds. Repeat rolling and folding one more time. Wrap in plastic and refrigerate for at least 1 hour.

Step 8
Preheat the oven to 375 degrees F (190 degrees C).

Step 9
Sprinkle a generous amount of the seasoned sugar onto your work surface. Place dough onto the sugar and sprinkle more sugar on top. Roll into a large rectangle about 1/8- to 1/4-inch thick, turning and topping with sugar between rolls.

Step 10
Use a pizza cutter to trim away uneven edges. Cut dough into 12 even pieces. Sprinkle more sugar on top. Lightly pinch each pastry into a crown shape by bringing all four corners to the center; place into the muffin cups. Sprinkle more sugar on top. Let rest for 10 minutes.

Step 11
Bake in the preheated oven until browned and puffed, 25 to 30 minutes. Transfer onto a cooling rack while still hot. Let cool for 15 minutes.")
r2 = Recipe.create(pastry_id: p1.id, name: "Gougères (Choux Pastry Cheese Puffs)", user_id: u2.id, rating: 5, description: "Gougères are cheesy puffs made from choux pastry. The choux base is quick and easy to whip up, and the gougères bake up golden and crisp.", prep_time: "35 minutes", bake_time: "55 minutes", total_time: "90 minutes", recipe_ingredients: "1 cup (235g) water or milk (see note)
6 tablespoons (85g) unsalted butter, cut into roughly 1/2-inch cubes
1/2 teaspoon (2g) Diamond Crystal kosher salt; for table salt use half as much by volume or the same weight
4 1/2 ounces (128g) all-purpose flour, sifted
4 large eggs
4 ounces (115g) finely grated Gruyère cheese, plus more for sprinkling
Pinch freshly grated nutmeg
Pinch freshly ground black pepper
Egg wash made from 1 large egg whisked with 1 tablespoon (15ml) water; or nonstick cooking spray", recipe_instructions: "Step 1
Preheat oven to 400°. Bring butter, salt, nutmeg, and 1 cup water to a boil in a medium saucepan, stirring until butter is melted. Remove from heat, add flour, and stir to combine.

Step 2
Cook mixture over medium heat, stirring vigorously with a wooden spoon, until mixture pulls away from sides of pan and forms a ball, about 2 minutes. Continue to cook, stirring vigorously, until a dry film forms on bottom and sides of pan and dough is no longer sticky, about 2 minutes longer. Remove pan from heat and let dough cool slightly, about 2 minutes. Mix in whole eggs one at a time, incorporating fully between additions. Mix in cheese and pepper.

Step 3
Scrape dough into a piping bag fitted with a ½” round tip (alternatively, use a plastic bag with a ½” opening cut diagonally from 1 corner). Pipe 1” rounds about 2” apart onto 2 parchment-lined baking sheets. Whisk egg yolk and 1 tsp. water in a small bowl; brush rounds with egg wash.

Step 4
Bake gougères until puffed and golden and dry in the center (they should sound hollow when tapped), 20–25 minutes.

Step 5
DO AHEAD: Dough can be made 4 hours ahead. Cover and chill. Gougères can be baked 2 hours ahead; reheat before serving.")
r3 = Recipe.create(pastry_id: p2.id, name: "Mandelhörnchen (Chocolate-Dipped Marzipan Almond Horns)", user_id: u3.id, rating: 4.87, description: "Mandelhörnchen, German for almond horns, are a naturally gluten-free sweet treat made out of marzipan, almond meal and sugar, then rolled in almond flakes and the two ends dipped in chocolate.  Popular throughout Germany, you can find them in many bakeries.  The ones sold in bakeries are usually larger than these, about double the size.  We’re making cookie-sized ones today but you can make them any size you like.", prep_time: "20 minutes", bake_time: "15 minutes", total_time: "35 minutes", recipe_ingredients: "8 ounces marzipan
(click here for easy homemade marzipan recipe!)
1 cup blanched super finely ground almond meal
1 cup powdered sugar sifted
1 egg white
1/2 teaspoon quality almond extract
2 teaspoons fresh lemon juice
1 egg white for brushing
1 cup sliced almonds", recipe_instructions: "Place the marzipan, ground almonds, powdered sugar, almond extract, fresh lemon juice, and egg white in a mixing bowl or in the bowl of a food processor with the paddle attachment in place. Knead the mixture until it comes together in a thick and tacky, but not overly sticky, dough. If it's too sticky add a little more ground almonds and/or sugar to it. Wrap the dough in plastic wrap and chill for at least 30 minutes (This can be made days in advance.)
When you're ready to make the almond horns, break the dough off into pieces and roll them into 1-inch balls. Then roll each ball into a small log, tapering it off so each end is a little thinner.
Use a pastry brush to brush egg white all over the cookie dough.
Roll each cookie into the slivered almonds. They don't have to be completely coated and keep in mind also that the ends will be dipped in chocolate. Bend each cookie into the shape of a crescent and place them on a lined cookie sheet about an inch and a half apart.
The oven should be preheated to 350 degrees. Bake the marzipan almond horns on the middle shelf for 10-15 minutes or until the tips are just starting to turn golden. Remove and let them cool completely.
Microwave some chocolate chips or chunks of chocolate until melted and then dip each end of the almond horns into the chocolate. Place the almond horns back on the cookie sheet or other surface to let the chocolate harden.
Store in an airtight container for up to a couple of weeks.")
r4 = Recipe.create(pastry_id: p4.id, name: "Pasties II", user_id: u4.id, rating: 4, description: "A traditional Upper Peninsula of Michigan treat! Complete with rutabaga! I am from the UP and this is the real deal! Rub pasties with a little milk for a golden color.", prep_time: "1 hours", bake_time: "1 hour", total_time: "2 hours", recipe_ingredients: "3 ½ cups all-purpose flour, sifted

1 ½ teaspoons salt

1 cup shortening

1 cup cold water

1 pound boneless round or chuck steak, cut into 1-inch cubes

2 potatoes, peeled and cubed

1 onion, chopped

¼ rutabaga, cubed

1 carrots, diced (Optional)

salt and pepper to taste

6 tablespoons margarine", recipe_instructions: "Step 1
In a large bowl, combine flour and salt. Cut in shortening until mixture resembles coarse crumbs. Stir in water until mixture forms a ball. Shape into a ball. Wrap in plastic and refrigerate.

Step 2
Preheat oven to 350 degrees F (175 degrees C). Line a baking sheet with parchment paper.

Step 3
In a large bowl, combine meat, potatoes, onion, rutabaga and chopped carrots. Season with salt and pepper. Divide dough into six pieces, and shape into balls. On a lightly floured surface, roll each ball into a 6 inch round. Place approximately 1 cup filling on one half of each. Dot each with 1 tablespoon margarine. Draw the other half of the pastry over the filling. Crimp edges to seal in filling. Prick with a fork and place on prepared baking sheet.

Step 4
Bake in preheated oven for 1 hour.")

r5 = Recipe.create(pastry_id: p5.id, name: "Croissants", user_id: u4.id, rating: 3.9, description: "A traditional Upper Peninsula of Michigan treat! Complete with rutabaga! I am from the UP and this is the real deal! Rub pasties with a little milk for a golden color.", prep_time: "40 minutes", bake_time: "10 minutes", total_time: "12 hours", recipe_ingredients: "1 ¼ teaspoons active dry yeast

3 tablespoons warm water (110 degrees F/45 degrees C)

1 teaspoon white sugar

1 ¾ cups all-purpose flour

2 teaspoons white sugar

1 ½ teaspoons salt

⅔ cup warm milk

2 tablespoons vegetable oil

⅔ cup unsalted butter, chilled

1 egg

1 tablespoon water", recipe_instructions: "Step 1
Combine yeast, warm water, and 1 teaspoon sugar. Allow to stand until creamy and frothy.

Step 2
Measure flour into a mixing bowl. Dissolve 2 teaspoons sugar and salt in warm milk. Blend into flour along with yeast and oil. Mix well; knead until smooth. Cover, and let rise until over triple in volume, about 3 hours. Deflate gently, and let rise again until doubled, about another 3 hours. Deflate and chill 20 minutes.

Step 3
Massage butter until pliable, but not soft and oily. Pat dough into a 14x8-inch rectangle. Smear butter over top two thirds, leaving 1/4-inch margin all around. Fold unbuttered third over middle third, and buttered top third down over that. Turn 90 degrees, so that folds are to left and right. Roll out to a 14x6-inch rectangle. Fold in three again. Sprinkle lightly with flour, and put dough in a plastic bag. Refrigerate 2 hours. Unwrap, sprinkle with flour, and deflate gently. Roll to a 14x6-inch rectangle, and fold again. Turn 90 degrees, and repeat. Wrap, and chill 2 hours.

Step 4
To shape, roll dough out to a 20x5-inch rectangle. Cut in half crosswise, and chill half while shaping the other half. Roll out to a 15 x 5 inch rectangle. Cut into three 5 x 5 inch squares. Cut each square in half diagonally. Roll each triangle lightly to elongate the point, and make it 7 inches long. Grab the other 2 points, and stretch them out slightly as you roll it up. Place on a baking sheet, curving slightly. Let shaped croissants rise until puffy and light. In a small bowl, beat together egg and 1 tablespoon water. Glaze croissants with egg wash.

Step 5
Bake in a preheated 475 degrees F (245 degrees C) oven for 12 to 15 minutes.")

r6 = Recipe.create(pastry_id: p6.id, name: "Golden Soft Pretzel", user_id: u5.id, rating: 3, description: "What makes a pretzel a pretzel is the step of boiling them in baking soda water. If you dip them in baking soda water but don't boil them in it, or if you use egg yolk to brush them, they are not going to turn out like pretzels.", prep_time: "30 minutes", bake_time: "25 minutes", total_time: "2 hours", recipe_ingredients: "2 (.25 ounce) packages active dry yeast

½ cup white sugar

2 cups warm water (110 to 115 degrees F/43 to 46 degrees C)

¼ cup butter, softened

1 egg

1 teaspoon salt

6 ½ cups all-purpose flour, or as needed

5 cups water

½ cup baking soda

1 tablespoon coarse sea salt, or as needed", recipe_instructions: "Step 1
Dissolve yeast and sugar in 2 cups warm water in a large bowl; let stand until bubbling, about 10 minutes. Beat butter, egg, and 1 teaspoon salt into yeast mixture until smooth. Mix in 2 cups flour to make a wet dough. Stir remaining flour into dough, 1 cup at a time, to make a stiff dough. Form dough into a ball.

Step 2
Grease a large bowl and turn dough around in greased bowl to coat. Cover lightly with a kitchen towel, place in a warm area, and let dough rise until doubled, at least 1 hour. Punch dough down.

Step 3
Preheat oven to 400 degrees F (200 degrees C). Grease baking sheets.

Step 4
Divide dough in half; cut each half into 8 pieces. Roll pieces out on a floured surface into ropes about 1/2-inch thick. Shape each rope into a pretzel.

Step 5
Bring 5 cups water to a boil in a large saucepan and dissolve baking soda in the boiling water. Boil pretzels, a few at a time, in the baking soda water for 10 minutes. Arrange pretzels on prepared baking sheets and sprinkle with coarse sea salt.

Step 6
Bake in the preheated oven until pretzels are shiny and golden brown, 15 to 20 minutes.")

r7 = Recipe.create(pastry_id: p6.id, name: "Pretzel Tart", user_id: u5.id, rating: 4.2, description: "This is truly a 'tart' tart! Lemon pudding, cream cheese and confectioners' sugar create a tart filling. The pretzel crust lends a salty flavor.", prep_time: "90 minutes", bake_time: "no bake", total_time: "2 hours", recipe_ingredients: "½ cup white sugar

½ cup butter, softened

1 ½ cups crushed pretzels

1 (3.4 ounce) package instant lemon pudding mix

1 (8 ounce) package cream cheese, softened

1 cup confectioners' sugar

1 (12 ounce) container frozen whipped topping, thawed", recipe_instructions: "Step 1
In a mixing bowl, thoroughly cream sugar and butter. Mix in pretzels. Press mixture into a 9x13 inch baking pan. Cover and refrigerate.

Step 2
Prepare lemon pudding mix according to package instructions. In a separate bowl, beat together cream cheese and confectioners' sugar. Fold in whipped topping.

Step 3
Spread cream cheese mixture over top of pretzel crust. Then spoon lemon pudding over cream cheese layer. Cover and refrigerate until pudding is set.")


r8 = Recipe.create(pastry_id: p5.id, name: "Pain au Chocolat (Chocolate-Filled Croissant)", user_id: u5.id, rating: 4.1, description: "This light, flaky French-style croissant roll is filled with delicious chocolate. The entire family will love it! Using the bread machine saves a lot of energy.", prep_time: "45 minutes", bake_time: "15 minutes", total_time: "4 hours", recipe_ingredients: "¼ cup warm water

2 ¼ cups bread flour

2 tablespoons instant nonfat dry milk

1 tablespoon white sugar

½ teaspoon salt

2 tablespoons butter, softened

1 ½ teaspoons instant yeast

½ cup butter, softened

1 egg yolk

1 tablespoon milk

8 (7 ounce) bars chocolate candy bar, broken into pieces

8 ounces semisweet chocolate chunks", recipe_instructions: "Step 1
Pour the water into a bread machine pan; add the flour. Sprinkle the milk powder over the flour. Place the sugar, salt, and 2 tablespoons of softened butter into the corners of the pan. Make a small indent in the top of the dry ingredients and put the yeast in the indent. Run the bread machine on the basic dough setting.

Step 2
Meanwhile, lay out a sheet of waxed or parchment paper. Shape the remaining 1/2 cup of butter into a 3x5 inch rectangle on the waxed paper; wrap and chill until ready to use.

Step 3
Remove the butter from the refrigerator and allow to soften while you roll out the dough. Turn the dough out onto a lightly floured surface. Roll the dough into a 8x12 inch rectangle. Place the butter on half of the dough, leaving a 1/2 inch border of dough on 3 sides. Fold the other half of the dough over the butter and press the edges firmly to seal.

Step 4
Roll the dough out to a 6x14 inch rectangle. Fold the dough in thirds from the long ends, as you would fold a business letter. Cover the dough loosely with plastic wrap and refrigerate for 20 minutes.

Step 5
Remove the dough from the refrigerator. Place it onto a lightly floured surface so that the folded edge faces you. Roll the dough out again into a 6x14 inch rectangle, and fold into thirds. Cover with plastic and chill for 20 minutes.

Step 6
Repeat step 5, chilling for 30 minutes.

Step 7
In a small bowl, beat together the egg yolk and milk; set aside. Grease two baking sheets.

Step 8
Roll the dough out into a 12x21 inch rectangle. Cut the dough into thirds in both directions, to make 9 rectangles. Divide the chocolate among the rectangles. Lightly brush the egg yolk mixture around the edges of each piece. Starting at a short end, roll each piece of dough around the chocolate as if you were rolling a cigar. Press the edges together to seal.

Step 9
Place the pastries onto the prepared baking sheets; cover with greased plastic wrap and allow to rise in a warm place until they have doubled in size, about 30 minutes.

Step 10
Preheat oven to 400 degrees F (200 degrees C).

Step 11
Brush the top of the pastries with the remaining egg yolk mixture.

Step 12
Bake in the preheated oven until golden brown, about 15 minutes. Cool for 5 minutes on the baking sheets, then transfer pastries to wire racks. Serve warm or at room temperature.")

r9 = Recipe.create(pastry_id: p4.id, name: "Vegetarian Pasties", user_id: u5.id, rating: 3.2, description: "I came up with this recipe because I wanted a vegetarian version.", prep_time: "40 minutes", bake_time: "30 minutes", total_time: "2 hours", recipe_ingredients: "3 cups all-purpose flour

1 teaspoon salt

½ teaspoon baking powder

1 cup butter

4 eggs

2 teaspoons distilled white vinegar

3 ½ cups water

1 cup dry lentils

3 potatoes, chopped

1 onion, chopped

1 tablespoon olive oil

1 teaspoon salt", recipe_instructions: "Step 1
Preheat oven to 350 degrees F (175 degrees C).

Step 2
Make the dough: mix flour, salt and baking powder together in a medium size mixing bowl. Cut in butter. Stir in egg, vinegar and 1/2 cup water. Continue stirring until dough is moist enough to be formed into a ball (add more water if necessary). Form the dough into a large ball.

Step 3
Make the filling: bring a pot of 3 cups water to boil, add lentils and continue to boil for 30 to 45 minutes; until lentils are tender. Watch the lentils and add water if necessary.

Step 4
Wrap the potatoes in aluminum foil and bake them for 30 minutes in the preheated oven. When the potatoes have cooled cut them into small pieces and mix them with the lentils.

Step 5
In a frying pan saute onions with oil. Stir the onions into the potato-lentil mixture; season with salt and stir.

Step 6
Divide the dough into 6 - 8-inch circles. Lay the circles on a flat, floured surface. Place one cup of filling into the center of each circle. Fold the dough around the filling; seal the edges and arrange the pasties on an ungreased cookie sheet. Bake for one hour in the preheated oven.")



puts "✅ Done seeding!"
