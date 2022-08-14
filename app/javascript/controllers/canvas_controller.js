import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="canvas"
export default class extends Controller {
  static targets = ['closeBtn']

  hide() {
    this.closeBtnTarget.click()
  }
}
