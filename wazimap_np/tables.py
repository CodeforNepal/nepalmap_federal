from wazimap.data.tables import FieldTable, SimpleTable

# Population tables
FieldTable(['sex'],
           id='population',
           universe='Population',
           description='Total Population',
           dataset='National Portal',
           year='2011')

FieldTable(['religion name'],
           id='religion',
           universe='Population',
           description='Population by Religion',
           dataset='National Portal',
           year='2011')

FieldTable(['caste or ethnic group'],
           id='caste',
           universe='Population',
           description='Caste or ethnic group',
           dataset='National Portal',
           year='2011')

FieldTable(['language'],
           universe='Population',
           description='Mother tongue',
           dataset='National Portal',
           year='2011')

FieldTable(['disability', 'sex'],
           universe='Population',
           description='Disability by gender',
           dataset='National Portal',
           year='2011')

# Agriculture Tables
FieldTable(['Agricultural land use area'],
           id='agriculture_land_use',
           universe='Agriculture',
           description='Agriculture Land Use Area',
           dataset='National Portal',
           year='2011')

FieldTable(['Agricultural holdings size by land tenure'],
           id='agriculture_holding_size',
           universe='agriculture holdings',
           description='Agricultural Holdings Size By Land Tenure',
           dataset='National Portal',
           year='2011')

# Household Tables
FieldTable(['home ownership'],
           universe='Households',
           description='Home ownership',
           dataset='National Portal',
           year='2011')

FieldTable(['drinking water source'],
           universe='Households',
           description='Drinking water source',
           dataset='National Portal',
           year='2011')

FieldTable(['lighting fuel'],
           universe='Households',
           description='Main type of lighting fuel',
           dataset='National Portal',
           year='2011')

FieldTable(['main type of cooking fuel'],
           universe='Households',
           description='Main type of cooking fuel',
           dataset='National Portal',
           year='2011')

FieldTable(['toilet type'],
           universe='Households',
           description='Type of toilet used',
           dataset='National Portal',
           year='2011')

FieldTable(['foundation type'],
           universe='Households',
           description='Building foundation',
           dataset='National Portal',
           year='2011')

FieldTable(['outer wall type'],
           universe='Households',
           description='Outer wall of building',
           dataset='National Portal',
           year='2011')

FieldTable(['roof type'],
           universe='Households',
           description='Roof type of building',
           dataset='National Portal',
           year='2011')

# Education
FieldTable(['education level passed', 'sex'],
           universe='Education',
           description='Education level attained',
           dataset='National Portal',
           year='2011')

FieldTable(['literacy', 'sex'],
           universe='Education',
           description='Literacy by attained',
           dataset='National Portal',
           year='2011')
