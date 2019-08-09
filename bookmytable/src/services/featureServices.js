export const getFeatures = () => {
    return require('./dump/JSON/features.json').sort();
}