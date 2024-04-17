import 'package:coffe_shop/models/category.dart';
import 'package:coffe_shop/models/menu_item.dart';
import 'package:coffe_shop/models/sub_category.dart';

List<Category> data = [
  Category(
    name: "Coffee",
    subCategories: [
      SubCategory(
        name: "Espresso",
        items: [
          MenuItem(
              name: "Espresso Shot",
              description: "A single shot of espresso.",
              price: 2.99,
              imageUrl: "https://example.com/espresso_shot.jpg",
              isAvailable: true,
              customizationOptions: []),
          MenuItem(
              name: "D.Espresso Shot",
              description: "A double shot of espresso.",
              price: 4.49,
              imageUrl: "https://example.com/double_espresso_shot.jpg",
              isAvailable: true,
              customizationOptions: []),
          MenuItem(
              name: "Macchiato",
              description: "Espresso with a dollop of steamed milk foam.",
              price: 3.49,
              imageUrl: "https://example.com/macchiato.jpg",
              isAvailable: true,
              customizationOptions: []),
          MenuItem(
              name: "Americano",
              description: "Espresso with hot water.",
              price: 3.99,
              imageUrl: "https://example.com/americano.jpg",
              isAvailable: true,
              customizationOptions: []),
          MenuItem(
              name: "Flat White",
              description: "Espresso with steamed milk.",
              price: 4.49,
              imageUrl: "https://example.com/flat_white.jpg",
              isAvailable: true,
              customizationOptions: [])
        ],
      ),
      SubCategory(
          name: "Cappuccino",
          categoryId: "1f35e24a-f266-46a6-bd59-1d15e9290abf",
          items: [
            MenuItem(
                name: "Classic Cappuccino",
                description:
                    "Espresso mixed with equal parts of steamed milk and milk foam.",
                price: 3.49,
                imageUrl: "https://example.com/classic_cappuccino.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Caramel Cappuccino",
                description: "Cappuccino with caramel syrup.",
                price: 4.99,
                imageUrl: "https://example.com/caramel_cappuccino.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Vanilla Cappuccino",
                description: "Cappuccino with vanilla syrup.",
                price: 4.99,
                imageUrl: "https://example.com/vanilla_cappuccino.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Hazelnut Cappuccino",
                description: "Cappuccino with hazelnut syrup.",
                price: 4.99,
                imageUrl: "https://example.com/hazelnut_cappuccino.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Mocha Cappuccino",
                description: "Cappuccino with chocolate syrup.",
                price: 4.99,
                imageUrl: "https://example.com/mocha_cappuccino.jpg",
                isAvailable: true,
                customizationOptions: [])
          ]),
      SubCategory(
          name: "Latte",
          categoryId: "1f35e24a-f266-46a6-bd59-1d15e9290abf",
          items: [
            MenuItem(
                name: "Classic Latte",
                description:
                    "Espresso mixed with steamed milk and a small amount of foam.",
                price: 3.99,
                imageUrl: "https://example.com/classic_latte.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Caramel Latte",
                description: "Latte with caramel syrup.",
                price: 4.99,
                imageUrl: "https://example.com/caramel_latte.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Vanilla Latte",
                description: "Latte with vanilla syrup.",
                price: 4.99,
                imageUrl: "https://example.com/vanilla_latte.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Hazelnut Latte",
                description: "Latte with hazelnut syrup.",
                price: 4.99,
                imageUrl: "https://example.com/hazelnut_latte.jpg",
                isAvailable: true,
                customizationOptions: []),
            MenuItem(
                name: "Mocha Latte",
                description: "Latte with chocolate syrup.",
                price: 4.99,
                imageUrl: "https://example.com/mocha_latte.jpg",
                isAvailable: true,
                customizationOptions: [])
          ]),
    ],
  ),
  Category(
    name: "Tea",
    imageUrl: "/categories/tea.png",
    subCategories: [
      SubCategory(name: "Black Tea", items: [
        MenuItem(
            name: "Earl Grey",
            description: "A blend of black tea flavored with bergamot oil.",
            price: 2.99,
            imageUrl: "https://example.com/earl_grey.jpg",
            isAvailable: true),
        MenuItem(
            name: "English Breakfast",
            description:
                "A classic blend of black teas, full-bodied and robust.",
            price: 3.49,
            imageUrl: "https://example.com/english_breakfast.jpg",
            isAvailable: true),
        MenuItem(
            name: "Assam",
            description: "A strong and malty black tea.",
            price: 3.49,
            imageUrl: "https://example.com/assam.jpg",
            isAvailable: true),
        MenuItem(
            name: "Darjeeling",
            description: "A light and floral black tea.",
            price: 3.99,
            imageUrl: "https://example.com/darjeeling.jpg",
            isAvailable: true),
        MenuItem(
            name: "Ceylon",
            description: "A brisk and citrusy black tea.",
            price: 3.99,
            imageUrl: "https://example.com/ceylon.jpg",
            isAvailable: true)
      ]),
      SubCategory(name: "Green Tea", items: [
        MenuItem(
            name: "Sencha",
            description:
                "A traditional Japanese green tea with a grassy flavor.",
            price: 2.99,
            imageUrl: "https://example.com/sencha.jpg",
            isAvailable: true),
        MenuItem(
            name: "Jasmine",
            description: "Green tea scented with jasmine flowers.",
            price: 3.49,
            imageUrl: "https://example.com/jasmine.jpg",
            isAvailable: true),
        MenuItem(
            name: "Matcha",
            description:
                "Finely ground powder of specially grown and processed green tea leaves.",
            price: 3.49,
            imageUrl: "https://example.com/matcha.jpg",
            isAvailable: true),
        MenuItem(
            name: "Gunpowder",
            description:
                "Rolled green tea leaves resembling gunpowder pellets.",
            price: 3.99,
            imageUrl: "https://example.com/gunpowder.jpg",
            isAvailable: true),
        MenuItem(
            name: "Genmaicha",
            description: "Green tea mixed with roasted brown rice kernels.",
            price: 3.99,
            imageUrl: "https://example.com/genmaicha.jpg",
            isAvailable: true)
      ]),
      SubCategory(
        name: "Herbal Tea",
        items: [
          MenuItem(
              name: "Peppermint",
              description: "A refreshing and minty herbal infusion.",
              price: 2.99,
              imageUrl: "https://example.com/peppermint.jpg",
              isAvailable: true),
          MenuItem(
              name: "Chamomile",
              description: "A soothing and floral herbal infusion.",
              price: 3.49,
              imageUrl: "https://example.com/chamomile.jpg",
              isAvailable: true),
          MenuItem(
              name: "Rooibos",
              description: "A caffeine-free herbal tea from South Africa.",
              price: 3.49,
              imageUrl: "https://example.com/rooibos.jpg",
              isAvailable: true),
          MenuItem(
              name: "Hibiscus",
              description:
                  "A tart and tangy herbal infusion made from hibiscus flowers.",
              price: 3.99,
              imageUrl: "https://example.com/hibiscus.jpg",
              isAvailable: true),
          MenuItem(
              name: "Ginger",
              description:
                  "A warming and spicy herbal infusion made from ginger root.",
              price: 3.99,
              imageUrl: "https://example.com/ginger.jpg",
              isAvailable: true)
        ],
      ),
    ],
  ),
  Category(
    name: "Pastries",
    imageUrl: '/categories/pastry.png',
    subCategories: [
      SubCategory(
        name: "Croissants",
        items: [
          MenuItem(
            name: "Plain Croissant",
            description: "Classic buttery and flaky croissant.",
            price: 2.49,
            imageUrl: "https://example.com/plain_croissant.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Chocolate Croissant",
            description: "Croissant filled with rich chocolate.",
            price: 2.99,
            imageUrl: "https://example.com/chocolate_croissant.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Almond Croissant",
            description: "Croissant filled and topped with almond slices.",
            price: 3.49,
            imageUrl: "https://example.com/almond_croissant.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Cheese Croissant",
            description: "Croissant filled with creamy cheese.",
            price: 3.49,
            imageUrl: "https://example.com/cheese_croissant.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Ham and Cheese Croissant",
            description: "Croissant filled with ham and cheese.",
            price: 3.99,
            imageUrl: "https://example.com/ham_cheese_croissant.jpg",
            isAvailable: true,
          ),
        ],
      ),
      SubCategory(
        name: "Muffins",
        items: [
          MenuItem(
            name: "Blueberry Muffin",
            description: "Moist muffin filled with fresh blueberries.",
            price: 2.99,
            imageUrl: "https://example.com/blueberry_muffin.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Chocolate Chip Muffin",
            description: "Rich muffin loaded with chocolate chips.",
            price: 3.49,
            imageUrl: "https://example.com/chocolate_chip_muffin.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Banana Nut Muffin",
            description: "Muffin made with ripe bananas and crunchy nuts.",
            price: 3.49,
            imageUrl: "https://example.com/banana_nut_muffin.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Lemon Poppy Seed Muffin",
            description: "Zesty muffin with poppy seeds for texture.",
            price: 3.99,
            imageUrl: "https://example.com/lemon_poppy_muffin.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Double Chocolate Muffin",
            description: "Decadent muffin with double the chocolate goodness.",
            price: 3.99,
            imageUrl: "https://example.com/double_chocolate_muffin.jpg",
            isAvailable: true,
          ),
        ],
      ),
      SubCategory(
        name: "Doughnuts",
        items: [
          MenuItem(
            name: "Glazed Doughnut",
            description: "Classic doughnut with a sweet glaze.",
            price: 1.99,
            imageUrl: "https://example.com/glazed_doughnut.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Chocolate Frosted Doughnut",
            description: "Doughnut dipped in chocolate frosting.",
            price: 2.49,
            imageUrl: "https://example.com/chocolate_frosted_doughnut.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Boston Cream Doughnut",
            description:
                "Doughnut filled with creamy custard and topped with chocolate.",
            price: 2.49,
            imageUrl: "https://example.com/boston_cream_doughnut.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Jelly Doughnut",
            description: "Doughnut filled with fruity jelly.",
            price: 2.49,
            imageUrl: "https://example.com/jelly_doughnut.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Cinnamon Sugar Doughnut",
            description: "Doughnut coated in cinnamon and sugar.",
            price: 1.99,
            imageUrl: "https://example.com/cinnamon_sugar_doughnut.jpg",
            isAvailable: true,
          ),
        ],
      ),
    ],
  ),
  Category(
    name: "Snacks",
    imageUrl: '/categories/cookies.png',
    subCategories: [
      SubCategory(
        name: "Sandwiches",
        items: [
          MenuItem(
            name: "Ham and Cheese Sandwich",
            description:
                "Classic sandwich with ham, cheese, lettuce, and tomato.",
            price: 5.99,
            imageUrl: "https://example.com/ham_cheese_sandwich.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Turkey and Avocado Sandwich",
            description:
                "Sandwich with sliced turkey, avocado, lettuce, and mayo.",
            price: 6.49,
            imageUrl: "https://example.com/turkey_avocado_sandwich.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Veggie Delight Sandwich",
            description:
                "Vegetarian sandwich with assorted fresh veggies and hummus.",
            price: 5.49,
            imageUrl: "https://example.com/veggie_delight_sandwich.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Chicken Caesar Sandwich",
            description:
                "Grilled chicken, romaine lettuce, and Caesar dressing on a roll.",
            price: 6.99,
            imageUrl: "https://example.com/chicken_caesar_sandwich.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Tuna Salad Sandwich",
            description: "Sandwich with tuna salad, lettuce, and tomato.",
            price: 5.99,
            imageUrl: "https://example.com/tuna_salad_sandwich.jpg",
            isAvailable: true,
          ),
        ],
      ),
      SubCategory(
        name: "Salads",
        items: [
          MenuItem(
            name: "Caesar Salad",
            description:
                "Classic Caesar salad with romaine lettuce, croutons, and Caesar dressing.",
            price: 6.99,
            imageUrl: "https://example.com/caesar_salad.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Greek Salad",
            description:
                "Salad with mixed greens, cucumbers, tomatoes, olives, and feta cheese.",
            price: 7.49,
            imageUrl: "https://example.com/greek_salad.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Garden Salad",
            description:
                "Fresh salad with mixed greens, carrots, bell peppers, and radishes.",
            price: 5.99,
            imageUrl: "https://example.com/garden_salad.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Cobb Salad",
            description:
                "Salad with mixed greens, grilled chicken, bacon, eggs, avocado, and blue cheese.",
            price: 8.49,
            imageUrl: "https://example.com/cobb_salad.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Caprese Salad",
            description:
                "Italian salad with tomatoes, fresh mozzarella, basil, and balsamic glaze.",
            price: 7.49,
            imageUrl: "https://example.com/caprese_salad.jpg",
            isAvailable: true,
          ),
        ],
      ),
      SubCategory(
        name: "Wraps",
        items: [
          MenuItem(
            name: "Chicken Caesar Wrap",
            description:
                "Grilled chicken, romaine lettuce, Parmesan cheese, and Caesar dressing in a wrap.",
            price: 6.99,
            imageUrl: "https://example.com/chicken_caesar_wrap.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Veggie Wrap",
            description:
                "Assorted fresh veggies, hummus, and feta cheese in a wrap.",
            price: 5.99,
            imageUrl: "https://example.com/veggie_wrap.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Turkey Club Wrap",
            description:
                "Sliced turkey, bacon, lettuce, tomato, and mayo in a wrap.",
            price: 7.49,
            imageUrl: "https://example.com/turkey_club_wrap.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "Buffalo Chicken Wrap",
            description:
                "Buffalo chicken, lettuce, tomato, and ranch dressing in a wrap.",
            price: 6.99,
            imageUrl: "https://example.com/buffalo_chicken_wrap.jpg",
            isAvailable: true,
          ),
          MenuItem(
            name: "BBQ Ranch Chicken Wrap",
            description:
                "BBQ chicken, lettuce, tomato, cheese, and ranch dressing in a wrap.",
            price: 7.49,
            imageUrl: "https://example.com/bbq_ranch_chicken_wrap.jpg",
            isAvailable: true,
          ),
        ],
      ),
    ],
  ),
];
