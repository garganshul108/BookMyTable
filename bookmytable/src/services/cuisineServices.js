import { getRestaurants } from './restaurantServices';

let cuisines = [];

let restaurants = getRestaurants();
let hashCuisines = [];
for (let restaurant of restaurants) {
    for (let c of restaurant.cuisines) {
        if (hashCuisines[c]) {
            hashCuisines[c]++;
        }
        else {
            hashCuisines[c] = 1;
        }
    }
}

for (let key in hashCuisines) {
    cuisines.push({ "name": key, "count": hashCuisines[key] });
}


export const getCuisines = () => {
    // setCuisineCount();
    return cuisines.sort(({ count: countA }, { count: countB }) => countB - countA);
    // return require('./dump/JSON/cuisines.json').sort();
}

export const getCuisinesByName = () => {
    // setCuisineCount();
    return cuisines.sort(({ count: countA }, { count: countB }) => countB - countA).map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}