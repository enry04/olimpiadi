import FetchUtil from "../../common/js/fetch-util.js";
import CalendarManager from "./calendar-manager.js";

const tableElement = document.querySelector("table");
FetchUtil.postData("./php/read-calendar.php").then((response) => {
    if (response.status == "success") {
        const calendarManager = new CalendarManager(tableElement);
        calendarManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            calendarManager.setRowData(data["nomeGara"], data["data"], data["nomeSede"], data["nomeNazionalita"], data["nomeFase"]);
        });
    } else {
        console.log(response.status);
    }
})