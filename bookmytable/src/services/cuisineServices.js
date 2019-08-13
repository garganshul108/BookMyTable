// import { getRestaurants } from './restaurantServices';
import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');
import { captialize } from '../util/util';
// let cuisines = [];

// let restaurants = getRestaurants();
// let hashCuisines = [];
// for (let restaurant of restaurants) {
//     for (let c of restaurant.cuisines) {
//         if (hashCuisines[c]) {
//             hashCuisines[c]++;
//         }
//         else {
//             hashCuisines[c] = 1;
//         }
//     }
// }

// for (let key in hashCuisines) {
//     cuisines.push({ "name": key, "count": hashCuisines[key] });
// }


export const getCuisines = () => {
    // setCuisineCount();
    // return cuisines.sort(({ count: countA }, { count: countB }) => countB - countA);
    return require('./dump/JSON/cuisines.json').sort();
}


export const getCuisinesByCity = async (city) => {
    const { data } = await http.get(apiConfig.baseURL + '/restaurants?city=' + city + "&meta=cuisines");
    let cuisines = [];
    for (let key in data) {
        cuisines.push({ "name": key, "count": data[key] });
    }
    return cuisines.sort(({ count: countA }, { count: countB }) => countB - countA);
}

export const getCuisinesByName = () => {
    // setCuisineCount();
    // return cuisines.sort(({ count: countA }, { count: countB }) => countB - countA).map(object => object.name);
    return require('./dump/JSON/cuisines.json').sort(({ count: countA }, { count: countB }) => countB - countA).map(object => object.name);
}