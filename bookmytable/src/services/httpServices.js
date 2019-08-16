import axios from 'axios';

// const axios = require('axios');

axios.defaults.headers.common['x-token'] = localStorage.getItem("token");

axios.interceptors.response.use(null, error => {
    const expectedError = error.response && error.response.status >= 400 && error.response.status < 500;

    if (!expectedError) {
        console.log(error);
        alert("Un expected error occurred");
    }

    return Promise.reject(error);
})

export default { ...axios }