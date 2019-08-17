import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const bookTable = (data) => {
    return http.post(apiBaseURL + "/users/bookings", [{ ...data }], {
        headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
    });
}