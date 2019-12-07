from wazimap.data.utils import get_stat_data


def get_agriculture_profile(geo, session):
    land_dist, total_land = get_stat_data(['Agricultural land use area'],
                                          geo,
                                          session,
                                          percent=True,
                                          order_by='-total')

    holding_dist, total_holding = get_stat_data(['Agricultural holdings size by land tenure'],
                                                geo,
                                                session,
                                                percent=True,
                                                order_by='-total')

    agriculture_data = dict(
        is_vdc=False,
        area_has_data=True,
        land_distribution=land_dist,
        total_land={
            'name': 'Hectares',
            'values': {'this': total_land}
        },
        holding_distribution=holding_dist,
        total_holding={
            'name': 'Hectares',
            'values': {'this': total_holding}
        }
    )

    return agriculture_data
