import { captialize } from "../util/util";


/****
 * Point to Remember
 * PTR:
 * here the JSON data is simply the array of restaurants
 * API may provide me a location object consisting of the array
 * 
 * 
 */
let jsonData = [
    ...require('./dump/JSON/R_data_Gurgaon0+20_filtered.json'),
    // ...require('./dump/JSON/R_data_Gurgaon21+20_filtered.json'),
    ...require('./dump/JSON/R_data_Delhi_filtered.json'),
    ...require('./dump/JSON/R_data_Kolkata_filtered.json'),
    ...require('./dump/JSON/R_data_Other_filtered.json')
];

function addMiscPropertyToRestaurants(restaurants) {
    return restaurants;
}




function refactorName(name) {
    return captialize(name);
}

function filterOutProperties(restaurants) {
    for (let restaurant of restaurants) {
        delete restaurant.currency;
        delete restaurant.deeplink;
        delete restaurant.events_url;
        delete restaurant.featured_image;
        delete restaurant.has_online_delivery;
        delete restaurant.is_delivering_now;
        delete restaurant.photo_count;
        delete restaurant.photos_url;
        delete restaurant.price_range;
        delete restaurant.url;
        delete restaurant.menu_url;
        delete restaurant.user_rating.rating_color;
        delete restaurant.user_rating.rating_text;
        delete restaurant.all_reviews_count;
    }
}

function adjustingProperties(restaurants) {
    for (let restaurant of restaurants) {
        if (!Array.isArray(restaurant.cuisines))
            restaurant.cuisines = restaurant.cuisines.split(",").map(item => item.trim());
        if (!Array.isArray(restaurant.establishments))
            restaurant.cuisines = restaurant.cuisines.split(",").map(item => item.trim());
        if (!Array.isArray(restaurant.features))
            restaurant.cuisines = restaurant.cuisines.split(",").map(item => item.trim());
        restaurant.name = refactorName(restaurant.name);
    }
}


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
}


function refactoringRestaurantData() {
    filterOutProperties(jsonData);
    renamingProperties(jsonData);
    adjustingProperties(jsonData);
    // addMiscPropertyToRestaurants(jsonData);
}

// refactoringRestaurantData();
// console.log(jsonData);
refactoringRestaurantData();

export const getRestaurants = () => {
    return jsonData.sort(({ name: nameA }, { name: nameB }) => { if (nameA > nameB) return 1; return -1; });
}
