# pull in the default wazimap settings
from wazimap.settings import *  # noqa

# install this app before Wazimap
INSTALLED_APPS = ['wazimap_np'] + INSTALLED_APPS

DEBUG = False if (os.environ.get('APP_ENV', 'dev') == 'prod') else True

DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://wazimap_np:wazimap_np@localhost/wazimap_np')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

SCHEME = 'http' if (os.environ.get('APP_ENV', 'dev') == 'dev') else 'https'
URL = SCHEME+'://'+'nepalmap.org'

# Localise this instance of Wazimap
WAZIMAP['name'] = 'NepalMap'
# NB: this must be https if your site supports HTTPS.
WAZIMAP['url'] = URL
WAZIMAP['country_code'] = 'NP'
WAZIMAP['profile_builder'] = 'wazimap_np.profiles.get_census_profile'
WAZIMAP['default_geo_version'] = '2016'
WAZIMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province']
    },
    'province': {  # 7 provinces
        'plural': 'provinces',
        'children': ['district']
    },
    'district': {  # 77 districts
        'plural': 'districts',
        'children': ['local']
    },
    # 6 Metropolitan Cities (Mahanagarpalika)
    # 11 Sub-Metropolitan Cities (Upa-Mahanagarpalika)
    # 276 Municipalities (Nagarpalika)
    # 460 Rural Municipalities (Gaunpalika)
    'local': {  # 753 local bodies
        'plural': 'locals',
        'children': []
    }
}
WAZIMAP['comparative_levels'] = ['country', 'province', 'district', 'local']
WAZIMAP['geometry_data'] = {
    '2016': {
        'country': 'geo/country.topojson',
        'province': 'geo/province.topojson',
        'district': 'geo/district.topojson',
        'local': 'geo/local.topojson'
    }
}

WAZIMAP['ga_tracking_id'] = os.environ.get('GA_TRACKING_ID')
WAZIMAP['twitter'] = '@codefornepal'

WAZIMAP['map_centre'] = [28.229651, 83.8165328]
WAZIMAP['map_zoom'] = 7

# Custom Settings
WAZIMAP['email'] = 'nepalmap@codefornepal.org'
WAZIMAP['github'] = 'https://github.com/Code4Nepal/nepalmap_federal'
WAZIMAP['tagline'] = 'Explore and understand Nepal using data'
WAZIMAP['facebook'] = 'codefornepal'
WAZIMAP['twittercard'] = True
