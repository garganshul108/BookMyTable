import http from './httpServices';
import apiConfig from './config/apiConfig.json';

const apiBaseURL = apiConfig.baseURL;

export const postReview = (data) => {
    return http.post(apiBaseURL + "/reviews", [{ ...data }], {
        headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
    });
}

export const getReviewsByUser = (id) => {
    return http.get(apiBaseURL + "/reviews?userId=" + id, {
        headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
    });
}