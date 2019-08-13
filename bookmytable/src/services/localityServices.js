
import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;
const GETallLocalitiesByCityName = apiConfig.get.allLocalitiesByCityName;

export const getLocalitiesByCityName = async (city) => {
    let { data: localities } = await http.get(apiBaseURL + GETallLocalitiesByCityName + city.toLowerCase());
    return localities.map(locality => locality["locality"]);
}