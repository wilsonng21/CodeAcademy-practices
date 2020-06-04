let raceNumber = Math.floor(Math.random() * 1000);

let earlyRunner = false
const runnerAge = 24

if (runnerAge > 18 && earlyRunner) {
  raceNumber += 1000
}

if (runnerAge >= 18 && earlyRunner) {
  console.log(`Your race number is ${raceNumber} and you race at 9:30AM.`)
} else if (runnerAge >= 18 && !earlyRunner) {
  console.log(`Your race number is ${raceNumber} and you race at 11AM`)
} else if (runnerAge < 18) {
  console.log(`Your race number is ${raceNumber} and you race at 12:30PM.`)
} else {
  console.log('Come see us at the registraion desk.')
}

