export const getCuisines = () => {
    return require('./dump/JSON/cuisines.json').sort();
}