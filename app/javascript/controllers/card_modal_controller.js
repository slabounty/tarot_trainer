import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal", "title", "content"]

  connect() {
    this.boundHandleKeydown = this.handleKeydown.bind(this)
    document.addEventListener("keydown", this.boundHandleKeydown)
  }

  disconnect() {
    document.removeEventListener("keydown", this.boundHandleKeydown)
  }

  open(event) {
    this.titleTarget.textContent = event.currentTarget.dataset.name

    this.contentTarget.innerHTML = `
      <p><strong>Suit:</strong> ${event.currentTarget.dataset.suit}</p>
      <p><strong>Value:</strong> ${event.currentTarget.dataset.value}</p>
      <p class="mt-2">${event.currentTarget.dataset.meaning}</p>
    `

    this.modalTarget.classList.remove("hidden")
  }

  close() {
    this.modalTarget.classList.add("hidden")
  }

  handleKeydown(event) {
    if (event.key === "Escape" && !this.modalTarget.classList.contains("hidden")) {
      this.close()
    }
  }
}
