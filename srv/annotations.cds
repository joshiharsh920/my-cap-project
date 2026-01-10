using { UI } from '@sap/cds/common';

annotate CatalogService.Books with @(
  UI.LineItem: [
    { Value: ID },
    { Value: title },
    { Value: stock },
    { Value: author_ID },
    { Value: category_ID }
  ],
  UI.Identification: [
    { Value: title }
  ]
);
