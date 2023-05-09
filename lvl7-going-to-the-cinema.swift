func movie(card: Double, ticket: Double, perc: Double) -> Int {
  var systemA = ticket
  var ticketB = ticket * perc
  var systemB = card + ticketB
  var times = 1
  while ceil(systemB) >= systemA {
    times += 1
    systemA += ticket
    ticketB *= perc
    systemB += ticketB
  }
  return times
}
