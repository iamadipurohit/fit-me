class Recepie {
  List reci1 = [
    'To prepare oatcakes: Whisk buttermilk (or kefir) and egg in a medium bowl. Combine oats, flour, sugar, baking soda, 1/2 teaspoon cinnamon and salt in another medium bowl. Stir the dry mixture into the wet mixture and let stand for 15 minutes. The mixture will bubble slightly as it sits.',
    'To prepare compote: Meanwhile, place raspberries, maple syrup and 1 teaspoon cinnamon in a small heavy saucepan. Bring to a simmer over medium heat and cook, stirring occasionally, until the berries are mostly broken down, 3 to 5 minutes. Remove from heat and cover to keep warm.',
    'Coat a griddle or large nonstick skillet with cooking spray; heat over medium heat. Using 1/4 cup of batter for each, cook 3 oatcakes at a time until bubbles dot the surface, 2 to 3 minutes. Flip and continue cooking until browned, 1 to 2 minutes more, reducing heat if necessary to prevent overbrowning.',
    'Serve the oatcakes with the compote.',
  ];
  List reci4 = [
    'Place a steamer basket in a large saucepan, add 1 inch of water and bring to a boil. Put potatoes in the basket and steam until barely tender when pierced with a skewer, 12 to 15 minutes, depending on size. When cool enough to handle, chop into 1/2-inch pieces.',
    'Heat 1 tablespoon oil in a large (not nonstick) skillet over medium heat. Add asparagus, mushrooms, shallot and garlic and cook, stirring often, until beginning to brown, 5 to 7 minutes. Remove to a plate.',
    'Add the remaining 2 tablespoons oil to the pan. Add onion and the potatoes and cook, stirring occasionally and scraping up the browned bits with a metal spatula, until the potatoes are browned, 4 to 8 minutes. Return the asparagus mixture to the pan along with roasted red pepper, sage, salt and pepper; cook, stirring, until heated through, about 1 minute more. Serve sprinkled with chives, if desired.',
    'Server the delicious dish.',
  ];
  List reci3 = [
    'Place eggs in a small saucepan and cover with water. Bring to a simmer over medium-high heat. Remove from heat and let stand for 2 to 3 minutes for soft-set yolks.',
    'Cut toast into strips.',
    'Transfer the eggs to egg cups or a bowl. Tap the top of each egg with a spoon to crack the upper part of the shell and remove. Season with salt and pepper.',
    'Server with the toast Soldiers',
  ];
  List reci2 = [
    'Preheat oven to 400 degrees F. Coat a 12-cup muffin pan with cooking spray.',
    'Combine coconut, 2 tablespoons all-purpose flour, 2 tablespoons brown sugar and 2 tablespoons macadamia nuts in a small bowl. Drizzle with 1 tablespoon oil; stir to combine. Set aside.',
    'Whisk the remaining 3/4 cup all-purpose flour, whole-wheat flour, baking powder, baking soda, salt and cinnamon in a medium bowl. Whisk the remaining 1/2 cup brown sugar, the remaining 1 tablespoon oil, egg, egg white, buttermilk, butter and coconut (or vanilla) extract in a medium bowl until well combined. Make a well in the center of the dry ingredients and pour in the wet ingredients; stir until just combined. Add blueberries and the remaining 3 tablespoons nuts; stir just to combine. Divide the batter among the prepared muffin cups. Sprinkle with the reserved coconut topping and gently press into the batter.',
    'Bake the muffins until golden brown and a wooden skewer inserted in the center comes out clean, about 20 minutes. Let cool in the pan for 10 minutes, then remove from the pan and let cool on a wire rack at least 5 minutes more before serving.',
  ];
  List reci1info = [
    'Low-Calorie',
    'High Fibre',
    'Healthy Aging',
    'Nutrition Info',
  ];
  List reci2info = [
    'Vegetarian',
    'Low Sodium',
    'Nutrition Info',
    'Bone Health'
  ];
  List reci3info = [
    'Low Added Sugars',
    'Bone Health',
    'Low-Calorie',
    'Dairy-Free',
  ];
  List reci4info = [
    'High Fiber',
    'Dairy-Free',
    'Gluten-Free',
    'Vegan',
  ];
  String step(int a, int number) {
    if (number == 1) {
      return reci1[a];
    } else if (number == 2) {
      return reci2[a];
    } else if (number == 3) {
      return reci3[a];
    } else {
      return reci4[a];
    }
  }

  String info(int a, int number) {
    if (number == 1) {
      return reci1info[a];
    } else if (number == 2) {
      return reci2info[a];
    } else if (number == 3) {
      return reci3info[a];
    } else {
      return reci4info[a];
    }
  }
}
