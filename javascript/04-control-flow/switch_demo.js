// The switch statement

const day = 3;
let name;

switch (day) {
  case 1:
    name = "Monday";
    break;
  case 2:
    name = "Tuesday";
    break;
  case 3:
    name = "Wednesday";
    break;
  default:
    name = "Unknown";
}
console.log(`Day ${day} is ${name}`);

// Intentional fall-through: cases 12, 1, 2 all share one block
const month = 4;
let season;

switch (month) {
  case 12:
  case 1:
  case 2:
    season = "Winter";
    break;
  case 3:
  case 4:
  case 5:
    season = "Spring";
    break;
  default:
    season = "Summer or Autumn";
}
console.log(`Month ${month} is in ${season}`);
