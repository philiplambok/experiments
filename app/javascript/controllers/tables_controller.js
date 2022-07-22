import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tables"
export default class extends Controller {
  static targets = ['items', 'masterCheck']

  toggleAll(event){
    this.itemsTargets.forEach((el) => {
      el.checked = event.target.checked
    })
  }

  sync(_event) {
    const checkedItems = this.itemsTargets.filter((el) => {
      return el.checked == true
    })
    if(checkedItems.length == this.itemsTargets.length){
      this.masterCheckTarget.checked = true
    } else {
      this.masterCheckTarget.checked = false
    }
  }
}
