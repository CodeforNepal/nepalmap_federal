from wazimap.urls import urlpatterns, STANDARD_CACHE_TIME
from django.conf.urls import url
from wazimap.views import GeographyDetailView
from django.views.decorators.cache import cache_page

profile_url_index = 3

urlpatterns.pop(profile_url_index)

urlpatterns.append(
  url(
        regex   = '^profiles/(?P<geography_id>\w+-\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail_country',
    )
)