
using my from '../db/schema';

service CatalogService {

  entity Books as projection on my.Books {
    ID,
    title,
    stock,
    author_ID,
    author,        // must include association
    category_ID,
    category       // must include association
  };

  entity Authors as projection on my.Authors;
  entity Categories as projection on my.Categories;
  entity Orders as projection on my.Orders;
  entity OrderItems as projection on my.OrderItems;
}


