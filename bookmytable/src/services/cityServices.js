let cities = require('./dump/JSON/cities.json');

// refactoringCitiesstruct

export const getCities = () => {
    cities.sort(({ name: A }, { name: B }) => {
        if (A < B) { return -1; }
        if (B > A) { return 1; }
        return 0;
    });
    return cities;
}

export const getCitiesByNames = () => {
    let cityNames = cities.map(city => city.name);
    cityNames.sort();
    return cityNames;
}