import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal", "title", "content"]

  open(event) {
    // if clicked element asked us not to open, bail
    if (event.defaultPrevented) return

    const el = event.currentTarget
    this.titleTarget.textContent = el.dataset.name

    this.contentTarget.innerHTML = `
      <p><strong>Meaning:</strong> ${el.dataset.meaning}</p>
      <p><strong>Reversed:</strong> ${el.dataset.reversedMeaning}</p>
    `

    this.modalTarget.classList.remove("hidden")
  }

  close() {
    this.modalTarget.classList.add("hidden")
  }

  stop(event) {
    event.stopPropagation()
  }
}
