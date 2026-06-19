function validateNumber(number) {
    if (number < 0 || number === undefined || number === null || number === "") {
        return null;
    }
    
    const realNumber = Number(number);

    if (Number.isNaN(realNumber)) {
        return null;
    }
}
export default validateNumber