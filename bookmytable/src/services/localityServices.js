
import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const getLocalitiesByCityName = async (city) => {
    let { data: localities } = await http.get(apiBaseURL + '/localities?city=' + city.toLowerCase());
    return localities.map(locality => locality["locality"]);
}