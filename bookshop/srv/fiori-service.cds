using { CatalogService } from './cat-service';

annotate CatalogService.Books with @(
  UI: {
    SelectionFields: [ ID, price, currency_code ],
    LineItem: [
      {Value: title},
      {Value: author, Label:'Author'},
      {Value: genre.name},
      {Value: price},
      {Value: currency.symbol, Label:'Currency'},
    ],
    Identification  : [
        {Value: title},
        {Value: author, Label:'Author'},
        {Value: genre.name},
        {Value: price},
        {Value: currency.symbol, Label:'Currency'}
    ],
    Facets: [
      {
        $Type: 'UI.CollectionFacet',
        Label: 'Book Details',
        ID: 'BookDetailsFacet',
        Facets: [
          {
            $Type: 'UI.ReferenceFacet',
            Label: 'Identification',
            Target: '@UI.Identification'
          }
        ]
      }
    ]
  }
);