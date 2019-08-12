from wazimap.data.utils import get_session, merge_dicts, group_remainder
from wazimap.geo import geo_data

from wazimap_np import (
    demographics, agriculture
)

# ensure tables are loaded

PROFILE_SECTIONS = (
    'demographics',
    'agriculture'
)

park_geo_codes = {'6099', '14099', '15099', '28088', '28099', '31088', '31099', '33099', '34099', '35099', '43099',
                  '45099', '49099', '58099', '67099', '68099', '69099', '70099', '72099', '76099', '77099'}


def should_have_data(geo_code, geo_level):
    return geo_level != 'local' and geo_code not in park_geo_codes


def get_census_profile(geo_code, geo_level, profile_name=None):
    session = get_session()

    try:
        geo_summary_levels = geo_data.get_summary_geo_info(geo_code, geo_level)
        data = {}

        for section in PROFILE_SECTIONS:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                if should_have_data(geo_code, geo_level):
                    data[section] = func(geo_code, geo_level, session)
                    #
                    #         # get profiles for province and/or country
                    for level, code in geo_summary_levels:
                        #             # merge summary profile into current geo profile
                        merge_dicts(data[section], func(code, level, session),
                                    level)
                else:
                    return {'area_has_no_data': True}


    finally:
        session.close()

    # if geo_level != 'vdc':
    # group_remainder(data['demographics']['language_distribution'], 10)
    # group_remainder(data['demographics']['ethnic_distribution'], 10)

    return data


def get_demographics_profile(geo_code, geo_level, session):
    return demographics.get_demographics_profile(geo_code, geo_level, session)


def get_agriculture_profile(geo_code, geo_level, session):
    return agriculture.get_agriculture_profile(geo_code, geo_level, session)
