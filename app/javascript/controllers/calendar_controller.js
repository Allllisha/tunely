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
    /*
    this.calendarTarget.dataset.bookings.split(',').forEach(startAndEnd => {
      let startDay = Date.parse(startAndEnd.split('|'))[0];
      console.log(startDay);
      const days = (Date.parse(startAndEnd.split('|')[1]) - startDay) / 86400000; // total number of days in between
      console.log(days);
      Array(days).forEach(() => {
        console.log(startDay);
        startDay += 86400000;
      });
    });
    */
  }
}
