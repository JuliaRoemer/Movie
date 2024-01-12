@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
define view entity ZI588954_Rating
  as select from zabap_rating_a
  association to parent ZI588954_Movie as _Movie on $projection.MovieUuid = _Movie.MovieUuid
{
  key rating_uuid as RatingUuid,
  key movie_uuid  as MovieUuid,
      user_name   as UserName,
      rating      as Rating,
      rating_date as RatingDate,
      
      _Movie
}
