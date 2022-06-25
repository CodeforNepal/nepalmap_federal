from collections import OrderedDict

from wazimap.data.utils import get_stat_data

# Education recodes
EDUCATION_LEVEL_PASSED_RECODES = OrderedDict([
    ('Primary Education (1-5 Class)', 'Primary'),
    ('Lower Secondary (Class 6-8)', 'Lower Secondary'),
    ('Secondary Level (Class 9-10)', 'Secondary'),
    ('SLC and Equivalent', 'SLC'),
    ('Intermediate and Equivalent', 'Intermed.'),
    ('Beginners', 'Beginner'),
    ('Non Formal Education', 'Non-formal'),
    ('Graduate and Equivalent', 'Graduate'),
    ('Post Graduate Equivalent and Above', 'Post-graduate and Above'),
    ('Level not Stated', 'Not Stated'),
    ('Others', 'Others')
])

LITERACY_RECODES = OrderedDict([
    ('Literate', 'Can Read and Write'),
    ('Not Read/Write', 'Not Literate'),
    ('Read Only', 'Can Read'),
    ('Not Stated', 'Not Stated')
])


def get_education_profile(geo, session):
    edu_level_reached, pop_five_and_older = get_stat_data(
        'education level passed', geo, session,
        recode=dict(EDUCATION_LEVEL_PASSED_RECODES),
        key_order=EDUCATION_LEVEL_PASSED_RECODES.values())

    total_primary = 0.0
    for key, data in edu_level_reached.items():
        if 'Primary' == key:
            total_primary += data['numerators']['this']

    all_edu_level_by_sex, _ = get_stat_data(
        ['education level passed', 'sex'], geo, session,
        recode={
            'education level passed': dict(EDUCATION_LEVEL_PASSED_RECODES)},
        key_order={
            'education level passed': EDUCATION_LEVEL_PASSED_RECODES.values(),
            'sex': ['Female', 'Male']},
        percent_grouping=['sex'])

    edu_level_by_sex = {
        'Primary': all_edu_level_by_sex['Primary'],
        'Lower Secondary': all_edu_level_by_sex['Lower Secondary'],
        'Secondary': all_edu_level_by_sex['Secondary'],
        'SLC': all_edu_level_by_sex['SLC'],
        'metadata': all_edu_level_by_sex['metadata']
    }

    total_secondary_by_sex = 0.0
    for data in edu_level_by_sex['Secondary'].values():
        if 'numerators' in data:
            total_secondary_by_sex += data['numerators']['this']

    literacy_by_sex, t_lit = get_stat_data(
        ['literacy', 'sex'], geo, session,
        recode={'literacy': dict(LITERACY_RECODES)},
        key_order={
            'literacy': LITERACY_RECODES.values(),
            'sex': ['Female', 'Male']},
        percent_grouping=['sex'])

    literacy_dist, _ = get_stat_data(
        'literacy', geo, session,
        recode=dict(LITERACY_RECODES),
        key_order=LITERACY_RECODES.values())

    education_stats = {
        'area_has_data': True,
        'education_level_passed_distribution': edu_level_reached,
        'primary_level_reached': {
            'name': 'Have passed the primary level',
            'numerators': {'this': total_primary},
            'values': {'this': round(total_primary / pop_five_and_older * 100,
                                     2)}
        },
        'education_level_by_sex_distribution': edu_level_by_sex,
        'primary_level_reached_by_sex': {
            'name': 'Have passed the secondary level',
            'numerators': {'this': total_secondary_by_sex},
            'values': {
                'this': round(
                    total_secondary_by_sex / pop_five_and_older * 100,
                    2)}
        },
        'literacy_by_sex_distribution': literacy_by_sex,
        'literacy_distribution': literacy_dist,
    }

    return education_stats
