// let cities = require('./dump/JSON/cities.json');
import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const getCities = async () => {
    let { data: cities } = await http.get(apiBaseURL + '/cities');
    cities.sort(({ name: A }, { name: B }) => {
        if (A < B) { return -1; }
        if (B > A) { return 1; }
        return 0;
    });
    return cities;
}

export const getCitiesByNames = async () => {
    let { data: cities } = await http.get(apiBaseURL + '/cities');
    let cityNames = cities.map(city => city.name);
    cityNames.sort();
    return cityNames;
}