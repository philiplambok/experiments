import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="money"
export default class extends Controller {
  toIdr(event){
    const rawAmount = event.srcElement.value.replace(/,/g, '')
    let parsedAmountInReversed = ''
    rawAmount.split('').reverse().forEach((el, index) => {
      if(index % 3 === 0) {
        parsedAmountInReversed += ','
      }
      parsedAmountInReversed += el
    })

    let parsedAmount = parsedAmountInReversed.split('').reverse()
    if(parsedAmount[parsedAmount.length - 1] === ',') {
      parsedAmount.pop()
    }
    event.srcElement.value = parsedAmount.join('')
  }
}
