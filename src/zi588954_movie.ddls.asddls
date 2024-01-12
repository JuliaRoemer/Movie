@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View for Booking Analysis'
define root view entity ZI588954_Movie
  as select from zabap_movie_a
  composition [0..*] of ZI588954_Rating as _Rating
{
  key movie_uuid      as MovieUuid,
      title           as Title,
      genre           as Genre,
      publishing_year as PublishingYear,
      runtime_in_min  as RuntimeInMin,
      @Semantics.imageUrl: true
      image_url       as ImageUrl,
      created_at      as CreatedAt,
      created_by      as CreatedBy,
      last_changed_at as LastChangedAt,
      last_changed_by as LastChangedBy,
      
  _Rating
}
