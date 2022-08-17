import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="money"
export default class extends Controller {
  toIdr(event){
    const onlyIntegerSubmittedValue = event.srcElement.value.split('').filter((el) => {
      return Number.isInteger(parseInt(el))
    }).join('')

    let idrInReversed = ''
    onlyIntegerSubmittedValue.split('').reverse().forEach((el, index) => {
      if(index % 3 === 0 && index !== 0) {
        idrInReversed += ','
      }
      idrInReversed += el
    })

    const idr = idrInReversed.split("").reverse().join('')
    event.srcElement.value = idr
  }
}
