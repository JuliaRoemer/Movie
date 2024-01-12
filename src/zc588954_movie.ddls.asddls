@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
@Metadata.allowExtensions: true
define root view entity ZC588954_Movie
  as projection on ZI588954_Movie
{
  key MovieUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageUrl,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      
      _Rating: redirected to composition child ZC588954_Rating
}
