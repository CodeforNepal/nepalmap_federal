from wazimap.data.tables import FieldTable, SimpleTable

# Population tables
FieldTable(['sex'],
           id='population',
           universe='Population',
           description='Total Population',
           dataset='National Population and Housing Census 2011',
           year='2011')

FieldTable(['religion_name'],
           id='religion',
           universe='Population',
           description='Population by Religion',
           dataset='National Population and Housing Census 2011',
           year='2011')
