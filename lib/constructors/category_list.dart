import 'category_constructor.dart';

List<CategoryConstructor> getCategories() {

  List<CategoryConstructor> _myCategories = [
    CategoryConstructor('Business news', 'images/business_news.jpg'),
    CategoryConstructor('Successful stories', 'images/successful_stories.jpg'),
    CategoryConstructor('Luxury food', 'images/luxury_food.jpg'),
    CategoryConstructor('Luxury cars', 'images/luxury_cars.JPG'),
    CategoryConstructor('Luxury homes', 'images/luxury_homes.jpg'),
    CategoryConstructor('Luxury vacation', 'images/luxury_vacation.jpg'),
    CategoryConstructor('Luxury clothes', 'images/luxury_clothes.jpg'),
    CategoryConstructor('Jewellery and Art', 'images/jewellery_art.jpg'),


  ];


  return _myCategories;
}
