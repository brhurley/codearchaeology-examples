// Default parameters fill in when an argument is missing
function createUser(name, role = "guest") {
  return `${name} (${role})`;
}

// Rest parameter gathers any number of arguments into an array
function sum(...numbers) {
  return numbers.reduce((total, n) => total + n, 0);
}

// Destructuring parameters with defaults
function buildUrl({ host, port = 80, path = "/" }) {
  return `http://${host}:${port}${path}`;
}

console.log(createUser("Grace"));
console.log(createUser("Linus", "admin"));
console.log("sum() =", sum());
console.log("sum(1, 2, 3, 4) =", sum(1, 2, 3, 4));
console.log(buildUrl({ host: "example.com" }));
console.log(buildUrl({ host: "example.com", port: 8080, path: "/api" }));
