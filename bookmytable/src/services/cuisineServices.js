// import { getRestaurants } from './restaurantServices';
import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');


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
    return require('./dump/JSON/cuisines.json').map(object => object.name);
}