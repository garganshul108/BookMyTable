const data = [
    {
        '_id': '1',
        'name': 'Kake da Dhabba',
        'rating': '2.2',
        'cuisine': 'North-Indian'
    },
    {
        '_id': '2',
        'name': 'Hatti Pyar Di',
        'rating': '2.2',
        'cuisine': 'North-Indian'
    },
    {
        '_id': '3',
        'name': 'Macchi Makkana',
        'rating': '2.2',
        'cuisine': 'Bengali'
    },
    {
        '_id': '4',
        'name': 'Amritsar Aao Ji',
        'rating': '2.2',
        'cuisine': 'North-Indian'
    },
    {
        '_id': '5',
        'name': 'Amma ki Rasoi',
        'rating': '2.2',
        'cuisine': 'South-Indian'
    },
    {
        '_id': '6',
        'name': 'Haweli: Aake Dekho',
        'rating': '2.2',
        'cuisine': 'Continental'
    },
    {
        '_id': '7',
        'name': 'Kerala Delight',
        'rating': '2.2',
        'cuisine': 'South-Indian'
    },
];

const jsonData = [
    // ...require('./JSON/R_data_Gurgaon0+20_filtered.json'),
    // ...require('./JSON/R_data_Gurgaon21+20_filtered.json'),
    // ...require('./JSON/R_data_Delhi_Filtered.json'),
    // ...require('./JSON/R_data_Kolkata_filtered.json'),
    ...require('./JSON/R_data_Other_filtered.json')
];

// console.log(jsonData);
export const getRestaurants = () => {
    return jsonData;
}
