import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tables"
export default class extends Controller {
  static targets = ['items', 'masterCheck', 'deleteBtn']

  toggleAll(event){
    this.itemsTargets.forEach((el) => {
      el.checked = event.target.checked
    })
    if(event.target.checked === true){
      this.deleteBtnTarget.classList.remove("d-none")
      this.deleteBtnTarget.classList.add('d-block')
    } else {
      this.deleteBtnTarget.classList.add('d-none')
    }
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
    if(checkedItems.length > 0){
      this.deleteBtnTarget.classList.remove("d-none")
      this.deleteBtnTarget.classList.add('d-block')
    } else {
      this.deleteBtnTarget.classList.add('d-none')
    }
  }
}
