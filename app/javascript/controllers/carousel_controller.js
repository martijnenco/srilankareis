import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "carouselContainer"]
  static values = { interval: Number }

  connect() {
    if (this.hasIntervalValue && this.slideTargets.length > 1) {
      setInterval(
        this.next.bind(this),
        this.intervalValue
      )
    }
  }

  next() {
    this.getCurrentIndex()
    if (this.index >= this.slideTargets.length - 1) {
      this.index = 0
    } else {
      this.index++
    }
    this.scrollToCurrentSlide()
  }

  previous() {
    this.getCurrentIndex()
    if (this.index <= 0) {
      this.index = this.slideTargets.length - 1
    } else {
      this.index--
    }
    this.scrollToCurrentSlide()
  }

  getCurrentIndex() {
    const currentScrollOffset = this.carouselContainerTarget.scrollLeft
    this.slideTargets.forEach((slide, index) => {
      if ((slide.offsetLeft / 1.01) <= currentScrollOffset) {
        this.index = index
      }
    })
  }

  scrollToCurrentSlide() {
    this.carouselContainerTarget.scrollTo({
      left: this.slideTargets[this.index].offsetLeft,
      behavior: "smooth"
    })
  }
}
