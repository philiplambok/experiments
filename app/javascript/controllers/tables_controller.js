import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tables"
export default class extends Controller {
  static targets = ['admins']

  toggleAll(event){
    this.adminsTargets.forEach((el) => {
      el.checked = event.target.checked
    })
  }
}