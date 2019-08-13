import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');
import { captialize } from '../util/util';
// import { getRestaurants } from './restaurantServices';

// let features = [];

// // function setEstablishmentCount() {
// let restaurants = getRestaurants();
// let hashFeatures = [];
// for (let restaurant of restaurants) {
//     for (let c of restaurant.features) {
//         if (hashFeatures[c]) {
//             hashFeatures[c]++;
//         }
//         else {
//             hashFeatures[c] = 1;
//         }
//     }
// }

// for (let key in hashFeatures) {
//     features.push({ "name": key, "count": hashFeatures[key] });
// }

// // }


export const getFeatures = () => {
    // return features.sort(({ count: countA }, { count: countB }) => countB - countA);
    return require('./dump/JSON/features.json').sort();
    // return require('./dump/JSON/cuisines.json').sort();
}


export const getFeaturesByCity = async (city) => {
    let { data } = await http.get(apiConfig.baseURL + '/restaurants?city=' + city + "&meta=highlights");
    let features = [];
    for (let key in data) {
        features.push({ "name": key, "count": data[key] });
    }
    return features.sort(({ count: countA }, { count: countB }) => countB - countA);

}


export const getFeaturesByName = () => {
    // setEstablishmentCount();
    return getFeatures().map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}

