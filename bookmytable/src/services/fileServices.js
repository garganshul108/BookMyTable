import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const fileUpload = (data, dir) => {
    console.log(data);
    return http.post(apiBaseURL + '/photos?dir=' + dir, data, {
        headers: {
            'content-type': 'multipart/form-data',
            "Access-Control-Allow-Origin": "*",
        }
    });
}