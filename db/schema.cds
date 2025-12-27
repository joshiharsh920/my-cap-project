namespace my;

entity Books {
  key ID : Integer;
  title  : String;
  author : String;
}  

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

