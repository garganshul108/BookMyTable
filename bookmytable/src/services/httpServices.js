import axios from 'axios';
import { toast } from 'react-toastify';

// const axios = require('axios');

axios.defaults.headers.common['x-access-token'] = localStorage.getItem("token");
axios.defaults.headers.common['access-control-expose-headers'] = 'x-access-token';

axios.interceptors.response.use(null, error => {
    const expectedError = error.response && error.response.status >= 400 && error.response.status < 500;

    if (!expectedError) {
        console.log(error);
        toast.error("Unexpected error occurred");
    }

    return Promise.reject(error);
})

export default { ...axios }