import { Controller } from "stimulus";
import * as LibName from "vanilla-js-calendar";

export default class extends Controller {
  static targets = [ 'calendar' ];

  connect() {
    const JSCalendar = LibName.JSCalendar;
    const JSCalendarEvent = LibName.JSCalendarEvent;
    const calendar = new JSCalendar(this.calendarTarget, {
      views: ["month"],
      daysVocab: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      width: 300,
      height: 200
    })
      .init()
      .render();
    document.querySelector(".control-bar-views").remove();
    document.querySelector(".calendar-action-today").remove();
    this.calendarTarget.dataset.bookings.split(',').forEach(startAndEnd => {
      startAndEnd.split('|');
    });
  }
}
