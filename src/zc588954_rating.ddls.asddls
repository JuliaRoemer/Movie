@EndUserText.label: 'Rating'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC588954_Rating
  as projection on ZI588954_Rating
{
  key RatingUuid,
      MovieUuid,
      UserName,
      Rating,
      RatingDate,

      _Movie : redirected to parent ZC588954_Movie
}
