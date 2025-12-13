import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal", "title", "content"]

  open(event) {
    const card = event.currentTarget.dataset

    this.titleTarget.textContent = card.name
    this.contentTarget.innerHTML = `
      <p><strong>Suit:</strong> ${card.suit}</p>
      <p><strong>Value:</strong> ${card.value}</p>
      <p class="mt-2 text-gray-700">${card.meaning}</p>
    `

    this.modalTarget.classList.remove("hidden")
  }

  close() {
    this.modalTarget.classList.add("hidden")
  }
}
