import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');
import { captialize } from '../util/util';

// const apiBaseURL = apiConfig.baseURL;

// import { getRestaurants } from './restaurantServices';
// let establishments = [];

// // function setEstablishmentCount() {
// let restaurants = getRestaurants();
// let hashEstablishments = [];
// for (let restaurant of restaurants) {
//     for (let c of restaurant.establishments) {
//         if (hashEstablishments[c]) {
//             hashEstablishments[c]++;
//         }
//         else {
//             hashEstablishments[c] = 1;
//         y
//     }
// }

// for (let key in hashEstablishments) {
//     establishments.push({ "name": key, "count": hashEstablishments[key] });
// }

// // }


export const getEstablishments = () => {
    // return establishments.sort(({ count: countA }, { count: countB }) => countB - countA);
    return require('./dump/JSON/cuisines.json').sort();
}

export const getEstablishmentsByCity = async (city) => {
    let { data } = await http.get(apiConfig.baseURL + '/restaurants?city=' + city + "&meta=establishments");
    let establishments = [];
    for (let key in data) {
        establishments.push({ "name": key, "count": data[key] });
    }
    return establishments.sort(({ count: countA }, { count: countB }) => countB - countA);
    // return data;
}

export const getEstablishmentsByName = () => {
    // setEstablishmentCount();
    return getEstablishments().map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}
