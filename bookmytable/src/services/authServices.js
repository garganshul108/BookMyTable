import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

const getUser = () => {
    return "";
}


const login = (data) => {
    return http.post(apiBaseURL + "/login", [{ ...data }], {
        headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
    });
}

const registerUser = (data) => {
    return http.post(apiBaseURL + "/users", [{ ...data }], {
        headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
    });
}

export default {
    getUser: getUser,
    registerUser: registerUser,
    login: login
}