import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"
// Connects to data-controller="modals"
export default class extends Controller {
  hello() {
    new bootstrap.Modal('#sampleModal').show()
  }
}
