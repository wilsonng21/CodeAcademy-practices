const getSleepHours = (day) => {
  switch(day) {
    case 'monday':
      return 8
      break
    case 'tuesday':
      return 8
      break
    case 'wednesday':
      return 7
      break
    case 'thursday':
      return 7
      break
    case 'friday':
      return 8
      break
    case 'saturday':
      return 8
      break
    case 'sunday':
      return 8
      break
  }
}

const getActualSleepHours = () => getSleepHours('monday') + getSleepHours('tuesday') + getSleepHours('wednesday') + getSleepHours('thursday') + getSleepHours('friday') + getSleepHours('saturday') + getSleepHours('sunday')

const getIdealSleepHours = hours => hours * 7

const calculateSleepDebt = () => {
  let actualSleepHours = getActualSleepHours()
  const idealSleepHours = getIdealSleepHours(8)

  if(actualSleepHours === idealSleepHours) {
    console.log('The user got the perfect amount of sleep.')
  } else if(actualSleepHours > idealSleepHours) {
    console.log('You got more sleep than needed.') 
  } else if(actualSleepHours < idealSleepHours) {
    console.log('You need more sleep.')
    console.log(idealSleepHours - actualSleepHours + " more hours to be exact.")
  }
}

calculateSleepDebt()
