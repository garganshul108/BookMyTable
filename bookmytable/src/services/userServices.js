import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const getUser = () => {
    return http.get(apiBaseURL + '/users');
}