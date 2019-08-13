// import { getRestaurants } from './restaurantServices';

// let establishments = [];

// // function setEstablishmentCount() {
// let restaurants = getRestaurants();
// let hashEstablishments = [];
// for (let restaurant of restaurants) {
//     for (let c of restaurant.establishments) {
//         if (hashEstablishments[c]) {
//             hashEstablishments[c]++;
//         }
//         else {
//             hashEstablishments[c] = 1;
//         }
//     }
// }

// for (let key in hashEstablishments) {
//     establishments.push({ "name": key, "count": hashEstablishments[key] });
// }

// // }


export const getEstablishments = () => {
    // return establishments.sort(({ count: countA }, { count: countB }) => countB - countA);
    return require('./dump/JSON/cuisines.json').sort();
}


export const getEstablishmentsByName = () => {
    // setEstablishmentCount();
    return getEstablishments().map(object => object.name);
    // return require('./dump/JSON/cuisines.json').sort();
}
