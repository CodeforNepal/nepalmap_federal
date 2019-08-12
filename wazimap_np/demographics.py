from wazimap.data.utils import get_stat_data


def get_demographics_profile(geo_code, geo_level, session):
    pop_data, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['sex'],
        table_name='population')

    demographic_data = {
        'pop_dist': pop_data,
        'has_data': total_pop > 0,
        'total_population': {
            'name': 'People',
            'values': {'this': total_pop}
        }
    }

    religion_data, _ = get_stat_data(['religion_name'], geo_level,
                                     geo_code, session,
                                     order_by='-total')
    most_populous_religion = religion_data[religion_data.keys()[0]]
    demographic_data['religion_distribution'] = religion_data
    demographic_data['most_populous_religion'] = most_populous_religion
    return demographic_data
