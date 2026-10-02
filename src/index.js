const greet = (name = "world") => `Hello, ${name}! Node ${process.version} is ready.`;
console.log(greet("developer"));
module.exports = { greet };
