const menu = {
  _courses: {
    appetizers: [],
    mains: [],
    desserts: [],
  },

  get appetizers() {
    return this._courses.appetizers
  },

  set appetizers(appetizerIn) {
    this._courses.appetizers = appetizerIn
  },
  get mains() {
    return this._courses.mains
  },

  set mains(mainIn) {
    this._courses.mains = mainIn
  },

  get desserts() {
    return this._courses.desserts
  },

  set desserts(dessertIn) {
    this._courses.desserts = dessertIn
  },

  get courses() {
    return {
      appetizers: this.appetizers,
      mains: this.mains,
      desserts: this.desserts,
    }
  },

  addDishToCourse(courseName, dishName, dishPrice) {
    const dish = {
      name: dishName,
      price: dishPrice
    }
    return this._courses[courseName].push(dish)
  },

  getRandomDishFromCourse(courseName) {
    const dishes = this._courses[courseName]
    const randomIndex = Math.floor(Math.random() * dishes.length)
    return dishes[randomIndex]
  },

  generateRandomMeal() {
    const appetizer = this.getRandomDishFromCourse('appetizers')
    const main = this.getRandomDishFromCourse('mains')
    const dessert = this.getRandomDishFromCourse('desserts')
    const totalPrice = appetizer.price + main.price + dessert.price
    return `Your meal is ${appetizer.name}, ${main.name}, ${dessert.name}, and the total price is $${totalPrice}.`
  }
}


menu.addDishToCourse('appetizers', 'salad', 4.00)
menu.addDishToCourse('appetizers', 'wings', 5.00)
menu.addDishToCourse('appetizers', 'fries', 6.00)

menu.addDishToCourse('mains', 'fried rice', 10.00)
menu.addDishToCourse('mains', 'pork fried rice', 11.00)
menu.addDishToCourse('mains', 'sushi', 12.00)

menu.addDishToCourse('desserts', 'ice cream', 9.00)
menu.addDishToCourse('desserts', 'tiramisu', 11.00)
menu.addDishToCourse('desserts', 'cofee', 5.00)

const meal = menu.generateRandomMeal()

console.log(meal)

