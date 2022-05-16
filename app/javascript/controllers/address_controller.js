import { Controller } from "@hotwired/stimulus"
import { get} from '@rails/request.js'


// Connects to data-controller="address"
export default class extends Controller {
  fetchState(event) {
    const country = event.target.value
    get(`/address?country=${country}`, { responseKind: 'turbo-stream' })
  }
}
