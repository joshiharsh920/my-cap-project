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
      author   : Association to Authors not null;
      category : Association to Categories;
}
