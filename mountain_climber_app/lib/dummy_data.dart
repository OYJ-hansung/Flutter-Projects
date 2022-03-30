import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: '설악산',
    color: Colors.purple,
    imageUrl:
        'http://blogs.chosun.com/pichy91/wp-content/uploads/sites/2/2014/06/20130920_140319_156005c5baf40ff51a327f1c34f2975b.jpg',
    difficulty: Difficulty.Hard,
    time: '5시간 20분',
  ),
  Category(
    id: 'c2',
    title: '지리산',
    color: Colors.red,
    imageUrl:
        'https://ww.namu.la/s/1186c83a1ec027560d4343ab734e7bc932823a704f34b0e7bc72efee974d4d76d70d0208d8789b717dc7f071b3d1690d388b108e1dbd613860fada6956979cf507918444be13b081bc362220c471fe62f9926995cb122df085dd147dbca37af9',
    difficulty: Difficulty.Hard,
    time: '5시간 40분',
  ),
  Category(
    id: 'c3',
    title: '속리산',
    color: Colors.orange,
    imageUrl:
        'http://san.chosun.com/site/data/img_dir/2021/10/26/2021102600136_0.jpg',
    difficulty: Difficulty.Simple,
    time: '3시간 20분',
  ),
  Category(
    id: 'c4',
    title: '감악산',
    color: Colors.amber,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/3/31/Gamaksan_Bridge_1.jpg',
    difficulty: Difficulty.Challenging,
    time: '6시간 00분',
  ),
  Category(
    id: 'c5',
    title: '계방산',
    color: Colors.blue,
    imageUrl:
        'https://www.sisaon.co.kr/news/photo/202001/107887_110984_419.jpg',
    difficulty: Difficulty.Challenging,
    time: '5시간 10분',
  ),
  Category(
    id: 'c6',
    title: '관악산',
    color: Colors.green,
    imageUrl:
        'https://cdn.crowdpic.net/detail-thumb/thumb_d_98E884783E3EF20FD573D86951AD1FEC.jpg',
    difficulty: Difficulty.Simple,
    time: '2시간 20분',
  ),
  Category(
    id: 'c7',
    title: '금수산',
    color: Colors.lightBlue,
    imageUrl:
        'http://san.chosun.com/site/data/img_dir/2018/07/31/2018073101630_0.jpg',
    difficulty: Difficulty.Hard,
    time: '4시간 40분',
  ),
  Category(
    id: 'c8',
    title: '내장산',
    color: Colors.lightGreen,
    imageUrl:
        'http://san.chosun.com/site/data/img_dir/2019/10/23/2019102301330_0.jpg',
    difficulty: Difficulty.Simple,
    time: '3시간 50분',
  ),
  Category(
    id: 'c9',
    title: '두타산',
    color: Colors.pink,
    imageUrl:
        'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202107/01/286ad0cf-81fe-41d5-be81-9bfce614615d.jpg',
    difficulty: Difficulty.Simple,
    time: '4시간 20분',
  ),
  Category(
    id: 'c10',
    title: '명성산',
    color: Colors.teal,
    imageUrl:
        'http://san.chosun.com/site/data/img_dir/2020/10/26/2020102601051_0.jpg',
    difficulty: Difficulty.Challenging,
    time: '5시간 50분',
  ),
];

const DUMMY_MEALS = const [
  Meal(
    location: '강원 춘천시 남산면 종자리로 42',
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: '38MILE',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20220311_135%2F1646997651746mHu1d_JPEG%2Fupload_e57b483360655dea2c13f7748e2ae785.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    location: '충북 충주시 충원대로 55',
    id: 'm2',
    categories: [
      'c2',
    ],
    title: '카페 단월',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190908_254%2F1567942262934F1Xrs_JPEG%2FYtq7hTf00vpEMYRiQCp8nop4.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    location: '충북 충주시 매봉재길 57',
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: '호숫가애',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20181227_60%2F1545874826230X78L5_JPEG%2FYwpAuuXctgLrXut1c-9wRoU9.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    location: '경기 광주시 남종면 산수로 1686',
    id: 'm4',
    categories: [
      'c4',
    ],
    title: '엘 포레스트',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20220324_15%2F164810132579898XWm_JPEG%2Fupload_23e0bad77de64116f3a36f8555165d48.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    location: '경기 남양주시 와부읍 팔당로139번길 43',
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: '팔당 자연애',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20180816_44%2F15344191172844xlHW_JPEG%2FT5tnuUCx2S1ThyLYxR-Nvbmc.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    location: '경기 하남시 월호로 48-7',
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: '몽촌토성 보리밥 손칼국수',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20211124_239%2F1637748437221K673D_JPEG%2Fupload_b9ca53c484d9e793a5cba6e12caee2e3.jpeg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    location: '강원 평창군 용평면 운두령로 377-81',
    id: 'm7',
    categories: [
      'c7',
    ],
    title: '오복가든',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMTRfMjY3%2FMDAxNjM0MjEyOTU3ODk0.1KA08Xgz4tEAckoYUqpE5j2ekoVqsCfxEq_29osBuAEg.iIxMxJw9JeHHLX3Isy2BGI9O0khxxrR0eYNveyrzhzsg.JPEG.anssy_%2Foutput_2504787364.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    location: '충북 단양군 가곡면 새밭로 819',
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '홍가네',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220308_265%2F1646715824351LxMuS_JPEG%2Fimage.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    location: '강원 횡성군 횡성읍 문화체육로 40',
    id: 'm9',
    categories: [
      'c9',
    ],
    title: '횡성한우곰탕',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20220102_110%2F1641116743947vFHva_JPEG%2Fupload_77ff9b0636ec6a87fee7a65a87f8958b.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    location: '강원 홍천군 화촌면 굴운로75번길 20-5',
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: '신토불이',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODAxMjJfOTYg%2FMDAxNTE2NTk0NjUzNDY3.H5FzhSjM2-qkp6yJqEXfIunyUt3UyxZgXbCsZa3W6kkg.hgMXTy5t5UDrpobhX0tqQSTtsqtYGIaBGddvpJvEjPYg.JPEG.soyeon-xx%2FP20180117_120526395_D41BB1EF-AA75-4199-B39C-8A1A0DFEB91F.JPG',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
