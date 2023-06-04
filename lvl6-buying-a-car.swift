func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
  var n = 0
  var percentLoss = Double(percentLossByMonth)
  var priceOld = Double(startPriceOld)
  var priceNew = Double(startPriceNew)
  var saving = 0.0
  while priceOld + saving < priceNew {
    n += 1
    if n % 2 == 0 {
      percentLoss += 0.5
    }
    priceOld -= priceOld * percentLoss / 100.0
    priceNew -= priceNew * percentLoss / 100.0
    saving = Double(savingPerMonth * n)
  }
  let leftOver = priceOld + saving - priceNew
  return (n, Int(round(leftOver)))
}
