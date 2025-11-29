import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card"
export default class extends Controller {
  static targets = ["info"]

  showInfo() {
    this.infoTarget.classList.remove("hidden")
  }
}
