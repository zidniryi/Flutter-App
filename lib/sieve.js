// @konsepkoding
// Sieve of Eratosthenes in JS

// In mathematics, the Sieve of Eratosthenes is a simple and ingenious
// ancient algorithm for finding all prime numbers up to any given limit.

let eratosthenes = function (n) {
    // Eratosthenes algorithm to find all primes under n
    let array = [], upperLimit = Math.sqrt(n), output = [];

    // Make an array from 2 to (n - 1)
    for (let i = 0; i < n; i++) {
        array.push(true);
    }

    for (let i = 2; i <= upperLimit; i++) {
        if (array[i]) {
            for (let j = i * i; j < n; j += i) {
                array[j] = false;
            }
        }
    }

    for (let i = 2; i < n; i++) {
        if (array[i]) {
            output.push(i);
        }
    }

    return output;
}
// Max bumber
let result = eratosthenes(12).join(", ")
// Log The result
console.log(result)