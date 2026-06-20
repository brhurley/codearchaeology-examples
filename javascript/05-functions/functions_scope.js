const globalLabel = "global";

function outer() {
  const localLabel = "local";
  // Inner function closes over localLabel and globalLabel
  function inner() {
    console.log(`inner sees: ${localLabel} and ${globalLabel}`);
  }
  inner();
}

// A closure that keeps private state
function makeCounter() {
  let count = 0; // private - not accessible from outside
  return function () {
    count += 1;
    return count;
  };
}

outer();

const counter = makeCounter();
console.log("count:", counter());
console.log("count:", counter());
console.log("count:", counter());

// A second counter has its own independent state
const other = makeCounter();
console.log("other count:", other());
