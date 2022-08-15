import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="canvas"
export default class extends Controller {
  static targets = ['closeBtn']

  hide(event) {
    if(event.detail.success) {
      this.closeBtnTarget.click()
    }
  }
}
