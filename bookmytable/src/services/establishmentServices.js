import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');





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
    return require('./dump/JSON/cuisines.json').map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}
