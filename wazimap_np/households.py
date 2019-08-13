from collections import OrderedDict

from wazimap.data.utils import get_stat_data

COOKING_FUEL_RECODES = OrderedDict([
    ('Wood/FireWood', 'Wood'),
    ('LP Gas', 'LPG'),
    ('Cow Dung', 'Cow Dung'),
    ('Bio-Gas Fuel', 'Biogas'),
    ('KeroseneFuel', 'Kerosene'),
    ('Electricity Fuel', 'Electricity'),
    ('OthersFuel', 'Others'),
    ('Not Sated about Fuel', 'Not Stated')
])

FOUNDATION_TYPE_RECODES = OrderedDict([
    ('Mud Bonded Bricks/Stone', 'Mud Bonded'),
    ('Wooden Pillar', 'Wooden Pillar'),
    ('Cement Bonded Bricks/Stone', 'Cement Bonded'),
    ('Rcc with Pillar', 'RCC with Pillar'),
    ('Others', 'Others'),
    ('Not Stated about House', 'Not Stated')
])

OUTER_WALL_TYPE_RECODES = OrderedDict([
    ('Mud Bonded Bricks/Stone Wall', 'Mud Bonded'),
    ('Cement Bonded Bricks/Stone Wall', 'Cement Bonded'),
    ('BambooWall', 'Bamboo'),
    ('Wood/Planks', 'Wood Planks'),
    ('Other Type Wall', 'Others'),
    ('Not Stated about Wall', 'Not Stated'),
    ('Unbaked Bricks', 'Unbacked Brick')
])

ROOF_TYPE_RECODES = OrderedDict([
    ('Galvanized Iron Plate', 'Galvanized Iron'),
    ('Tile/Slate Roof', 'Slate'),
    ('RCC Roof', 'Reinforced Concrete'),
    ('Thatch/Straw Roof', 'Thatch'),
    ('Not Sated Roof', 'Not Stated'),
    ('Mud Roof', 'Mud'),
    ('Wood/Planks Roof', 'Wood Planks'),
    ('Other Type of Roof', 'Others')
])

TOILET_TYPE_RECODES = OrderedDict([
    ('Flush toilet (sewerage)', 'Flush (Sewerage)'),
    ('Flush Toilet Septic Tank', 'Flush (Septic)'),
    ('Without Tiolet', 'None'),
    ('Ordinary Toilet', 'Ordinary'),
    ('Not Stated about Toilet', 'Not Stated')
])

HOME_OWNERSHIP_RECODES = OrderedDict([
    ('Owned House', 'Owned'),
    ('Rental House', 'Rented'),
    ('Other Type of House', 'Others'),
    ('Institutional House', 'Institutional')
])

DRINKING_WATER_RECODES = OrderedDict([
    ('Tap/Piped', 'Piped Tap'),
    ('Tubewell/HandPump', 'Tube Well'),
    ('Sprout Water', 'Sprout Water'),
    ('Uncovered Well/Kuwa', 'Uncovered Well'),
    ('CoveredWell/Kuwa', 'Covered Well'),
    ('Other Source of water', 'Others'),
    ('River/Stream', 'River or Stream'),
    ('Not Stated Source of Water', 'Not Stated')
])

LIGHTING_FUEL_RECODES = OrderedDict([
    ('Electricity', 'Electricity'),
    ('Kerosene', 'Kerosene'),
    ('Solar', 'Solar'),
    ('Others Type of Light', 'Others'),
    ('Not Sated about Light', 'Not Stated'),
    ('Bio-Gas', 'Biogas')
])


def get_households_profile(geo_code, geo_level, session):
    sex_dist_data, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['sex'],
        table_name='population')

    # home ownership
    home_ownership_dict, total_households = get_stat_data(
        'home ownership', geo_level, geo_code, session,
        recode=dict(HOME_OWNERSHIP_RECODES),
        key_order=HOME_OWNERSHIP_RECODES.values())
    total_own_home = home_ownership_dict['Owned']['numerators']['this']

    household_size = total_pop / float(total_households)
    women = sex_dist_data['Female']['numerators']['this']
    men = sex_dist_data['Male']['numerators']['this']
    male_female_ratio = round(men / women * 100, 2)

    # drinking water source
    drinking_water_dict, _ = get_stat_data(
        'drinking water source', geo_level, geo_code, session,
        recode=dict(DRINKING_WATER_RECODES),
        order_by='-total')
    total_piped_tap = drinking_water_dict['Piped Tap']['numerators']['this']

    # lighting fuel
    lighting_fuel_dict, _ = get_stat_data(
        'lighting fuel', geo_level, geo_code, session,
        recode=dict(LIGHTING_FUEL_RECODES),
        order_by='-total')
    total_electricity = lighting_fuel_dict['Electricity']['numerators']['this']

    # cooking fuel
    cooking_fuel_dict, total_households = get_stat_data(
        'main type of cooking fuel', geo_level, geo_code, session,
        recode=dict(COOKING_FUEL_RECODES),
        key_order=COOKING_FUEL_RECODES.values())
    total_wood = cooking_fuel_dict['Wood']['numerators']['this']

    # toilet type
    toilet_type_dict, _ = get_stat_data(
        'toilet type', geo_level, geo_code, session,
        recode=dict(TOILET_TYPE_RECODES),
        key_order=TOILET_TYPE_RECODES.values())
    total_flush_toilet = toilet_type_dict['Flush (Septic)']['numerators']['this'] \
                         + toilet_type_dict['Flush (Sewerage)']['numerators']['this']

    # foundation type
    foundation_type_dict, _ = get_stat_data(
        'foundation type', geo_level, geo_code, session,
        recode=dict(FOUNDATION_TYPE_RECODES),
        key_order=FOUNDATION_TYPE_RECODES.values())
    total_mud_bonded_foundation = \
        foundation_type_dict['Mud Bonded']['numerators']['this']

    # outer wall type
    outer_wall_type_dict, _ = get_stat_data(
        'outer wall type', geo_level, geo_code, session,
        recode=dict(OUTER_WALL_TYPE_RECODES),
        key_order=OUTER_WALL_TYPE_RECODES.values())
    total_mud_bonded_wall = \
        outer_wall_type_dict['Mud Bonded']['numerators']['this']

    # roof type
    roof_type_dict, _ = get_stat_data(
        'roof type', geo_level, geo_code, session,
        recode=dict(ROOF_TYPE_RECODES),
        key_order=ROOF_TYPE_RECODES.values())
    total_galvanized_roof = \
        roof_type_dict['Galvanized Iron']['numerators']['this']

    household_stats = {
        'area_has_data': True,
        'home_ownership_distribution': home_ownership_dict,
        'total_households': {
            'name': 'Households',
            'values': {'this': total_households}
        },
        'average_household_size': {
            'name': 'Average household size',
            'values': {'this': '{0:.2f}'.format(household_size)}
        },
        'male_to_female_ratio': {
            'name': 'Men per 100 women',
            'values': {'this': '{0:.2f}'.format(male_female_ratio)}
        },
        'own_home': {
            'name': 'Own their own home',
            'numerators': {'this': total_own_home},
            'values':
                {'this': round(
                    total_own_home / total_households * 100, 2)}
        },
        'drinking_water_distribution': drinking_water_dict,
        'piped_tap': {
            'name': 'Use piped tap water for drinking',
            'numerators': {'this': total_piped_tap},
            'values':
                {'this': round(
                    total_piped_tap / total_households * 100, 2)}
        },
        'lighting_fuel_distribution': lighting_fuel_dict,
        'lighting_electricity': {
            'name': 'Use electricity for lighting',
            'numerators': {'this': total_electricity},
            'values':
                {'this': round(
                    total_electricity / total_households * 100, 2)}
        },
        'cooking_fuel_distribution': cooking_fuel_dict,
        'cooking_wood': {
            'name': 'Use wood for cooking',
            'numerators': {'this': total_wood},
            'values': {'this': round(total_wood / total_households * 100, 2)}
        },
        'toilet_type_distribution': toilet_type_dict,
        'flush_toilet': {
            'name': 'Have a flush toilet',
            'numerators': {'this': total_flush_toilet},
            'values':
                {'this': round(
                    total_flush_toilet / total_households * 100, 2)}
        },
        'foundation_type_distribution': foundation_type_dict,
        'mud_bonded_foundation': {
            'name': 'Have a mud-bonded foundation',
            'numerators': {'this': total_mud_bonded_foundation},
            'values':
                {'this': round(
                    total_mud_bonded_foundation / total_households * 100, 2)}
        },
        'outer_wall_type_distribution': outer_wall_type_dict,
        'mud_bonded_wall': {
            'name': 'Have mud-bonded walls',
            'numerators': {'this': total_mud_bonded_wall},
            'values':
                {'this': round(
                    total_mud_bonded_wall / total_households * 100, 2)}
        },
        'roof_type_distribution': roof_type_dict,
        'galvanized_roof': {
            'name': 'Have a galvanized iron roof',
            'numerators': {'this': total_galvanized_roof},
            'values':
                {'this': round(
                    total_galvanized_roof / total_households * 100, 2)}
        },
    }

    return household_stats
