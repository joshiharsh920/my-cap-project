namespace my;


entity Authors {
  key ID   : Integer;
      name : String;
}

entity Categories {
  key ID   : Integer;
      name : String;
}

entity Orders {
  key ID        : Integer;
      createdAt : Timestamp;
      items     : Composition of many OrderItems
                    on items.order = $self;
}

entity OrderItems {
  key ID       : Integer;
      order    : Association to Orders;
      book     : Association to Books;
      quantity : Integer;
}

entity Books {
  key ID       : Integer;
      title    : String not null;
      stock    : Integer default 0;
      author_ID : Integer;                          // NEW
      author   : Association to Authors on author.ID = author_ID;
      category_ID : Integer;                        // NEW
      category : Association to Categories on category.ID = category_ID;
}
