import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');


export const getFeaturesByCity = async (city) => {
    let { data } = await http.get(apiConfig.baseURL + '/restaurants?city=' + city + "&meta=highlights");
    let features = [];
    for (let key in data) {
        features.push({ "name": key, "count": data[key] });
    }
    return features.sort(({ count: countA }, { count: countB }) => countB - countA);

}


export const getFeaturesByName = () => {
    return require('./dump/JSON/features.json').sort().map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}

