from wazimap.data.utils import get_stat_data
from wazimap.data.utils import LocationNotFound


def get_agriculture_profile(geo_code, geo_level, session):
    agriculture_data = {'area_has_data': False}

    try:

        land_dist, total_land = get_stat_data(['Agricultural land use area'], geo_level, geo_code, session,
                                              percent=True,
                                              order_by='-total')

        holding_dist, total_holding = get_stat_data(['Agricultural holdings size by land tenure'], geo_level, geo_code,
                                                    session,
                                                    percent=True,
                                                    order_by='-total')

        agriculture_data = dict(
            is_vdc=False,
            area_has_data=True,
            land_distribution=land_dist,
            total_land={
                'name': 'Total Land Use',
                'values': {'this': total_land}
            },
            holding_distribution=holding_dist,
            total_holding={
                'name': 'Total Land Holding Size',
                'values': {'this': total_holding}
            }
        )
    except LocationNotFound:
        pass

    return agriculture_data
