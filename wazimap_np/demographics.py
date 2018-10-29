from collections import OrderedDict


from wazimap.data.tables import get_datatable, get_model_from_fields
from wazimap.data.utils import get_stat_data, get_objects_by_geo, \
    calculate_median


def get_demographics_profile(geo_code, geo_level, session):
    demographic_data = {
        "is_vdc": True,
        "has_data": True
    }
    pop_data, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['sex'],
        table_name='population')
    demographic_data['pop_dist'] = pop_data
    demographic_data['total_population'] = {
        "name": "People",
        "values": {"this": total_pop}
    }
    return demographic_data
