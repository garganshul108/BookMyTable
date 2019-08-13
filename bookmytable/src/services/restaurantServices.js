import http from './httpServices';
// const http = require('axios');
import apiConfig from './config/apiConfig.json';
// const apiConfig = require('./config/apiConfig.json');
import { captialize } from '../util/util';

const apiBaseURL = apiConfig.baseURL;
const getRestaurantsByCityName = apiConfig.get.allRestaurantsByCityName;

let jsonData = [...require('./dump/JSON/R_data_Gurgaon0+20_filtered.json')];

function renamingProperties(restaurants) {
    const config = require('./config/RestaurantDataConfig.json');
    for (let restaurant of restaurants) {
        for (let oldKey in config) {
            if (restaurant.hasOwnProperty(oldKey)) {
                restaurant[config[oldKey]] = restaurant[oldKey];
                delete restaurant[oldKey];
            }
        }
    }
    return restaurants;
}

function refactorName(name) {
    return (name);
}

function adjustingProperties(restaurants) {
    for (let restaurant of restaurants) {
        if (!Array.isArray(restaurant.cuisines)) {
            restaurant.cuisines = restaurant.cuisines.split(",").map(item => item.trim());
        }
        if (!Array.isArray(restaurant.establishments)) {
            restaurant.establishments = restaurant.establishments.split(",").map(item => item.trim());
        }
        if (!Array.isArray(restaurant.features)) {
            restaurant.features = restaurant.features.split(",").map(item => item.trim());
        }
        restaurant.name = refactorName(restaurant.name);
    }
    return restaurants;
}


export const getRestaurants = () => {
    return jsonData.sort(({ name: nameA }, { name: nameB }) => { if (nameA > nameB) return 1; return -1; });
}


export const getRestaurantsByCity = async (city) => {
    let { data } = await http.get(apiBaseURL + getRestaurantsByCityName + "gurgaon");
    data = data.slice(1);
    data = renamingProperties(data);
    data = adjustingProperties(data);
    return data;
}

// getRestaurantsByCity();



// /****
//  * Point to Remember
//  * PTR:
//  * here the JSON data is simply the array of restaurants
//  * API may provide me a location object consisting of the array
//  * 
//  * 
//  */

// 

// function filterOutProperties(restaurants) {
//     for (let restaurant of restaurants) {
//         delete restaurant.currency;
//         delete restaurant.deeplink;
//         delete restaurant.events_url;
//         delete restaurant.featured_image;
//         delete restaurant.has_online_delivery;
//         delete restaurant.is_delivering_now;
//         delete restaurant.photo_count;
//         delete restaurant.photos_url;
//         delete restaurant.price_range;
//         delete restaurant.url;
//         delete restaurant.menu_url;
//         delete restaurant.user_rating.rating_color;
//         delete restaurant.user_rating.rating_text;
//         delete restaurant.all_reviews_count;
//     }
// }


// function refactoringRestaurantData() {
//     filterOutProperties(jsonData);
//     renamingProperties(jsonData);
//     adjustingProperties(jsonData);
//     // addMiscPropertyToRestaurants(jsonData);
// }

// // refactoringRestaurantData();
// // console.log(jsonData);
// refactoringRestaurantData();
