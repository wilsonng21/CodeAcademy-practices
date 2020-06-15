const team = {
  _players: [
    {firstName: 'Pablo', lastName: 'Sanchez', age: 11},
    {firstName: 'Wilson', lastName: 'Smith', age: 12},
    {firstName: 'Jesus', lastName: 'Gomez', age: 10}
    ],
  _games: [
    {opponent: 'Broncos', teamPoints: 42, opponentPoints: 27},
    {opponent: 'Big Horn', teamPoints: 54, opponentPoints: 30},
    {opponent: 'Panthers', teamPoints: 36, opponentPoints: 47},
  ],

  get players() {
    return this._players
  },
  get games() {
    return this._games
  },

  addPlayer(firstName, lastName, age) {
    let player = {
      firstName,
      lastName,
      age
    }
    return this.players.push(player)
  },

  addGame(opponent, teamPoints, opponentPoints) {
    let game = {
      opponent,
      teamPoints,
      opponentPoints
    }
    return this.games.push(game)
  },

}

team.addPlayer('Jake', 'Wong', 11)
team.addPlayer('Steph', 'Curry', 28)
team.addPlayer('Lisa', 'Leslie', 44)
console.log(team.players)

team.addGame('Babies', 21, 46)
team.addGame('Rollie', 87, 34)
team.addGame('Wizards', 12, 77)

console.log(team.games)
