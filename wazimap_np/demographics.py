from collections import OrderedDict

from wazimap.data.utils import get_stat_data

# Demographic recodes
DISABILITY_RECODES = OrderedDict([
    ('Physical', 'Physical'),
    ('Blind/low vision', 'Blind/Low Vision'),
    ('Deaf/hard of hearing', 'Deaf'),
    ('Speech problem', 'Speech'),
    ('Multiple disable', 'Multiple Disabilities'),
    ('Mental disable', 'Mental Disability'),
    ('Intellectual disable', 'Intellectual'),
    ('Deaf-Blind', 'Deaf and Blind')
])


def get_demographics_profile(geo, session):
    pop_data, total_pop = get_stat_data(
        'sex', geo, session,
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

    religion_data, _ = get_stat_data(['religion name'], geo, session, order_by='-total')
    most_populous_religion = religion_data[list(religion_data.keys())[0]]

    # language
    language_data, _ = get_stat_data(['language'], geo, session, order_by='-total')
    language_most_spoken = language_data[list(language_data.keys())[0]]

    # caste or ethnic group
    caste_data, _ = get_stat_data(['caste or ethnic group'], geo, session, order_by='-total')
    most_populous_caste = caste_data[list(caste_data.keys())[0]]

    # population by disability
    disability_dist_data, total_disabled = get_stat_data(
        'disability', geo, session,
        table_fields=['disability', 'sex'],
        recode=dict(DISABILITY_RECODES),
        key_order=DISABILITY_RECODES.values(),
        exclude=['No disability'])

    demographic_data.update({
        'religion_distribution': religion_data,
        'most_populous_religion': most_populous_religion,
        'ethnic_distribution': caste_data,
        'most_populous_caste': most_populous_caste,
        'language_distribution': language_data,
        'language_most_spoken': language_most_spoken,
        'disability_ratio': disability_dist_data,
        'percent_disabled': {
            'name': 'Are disabled',
            'values':
                {'this': round(total_disabled / float(total_pop) * 100, 2)},
        },
    })

    return demographic_data
