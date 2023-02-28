import FetchUtil from "../../common/js/fetch-util.js";
import RecordsManager from "./records-manager.js";

const tableElement = document.querySelector("table");
FetchUtil.postData("./php/read-records.php").then((response) => {
    if (response.status == "success") {
        const recordsManager = new RecordsManager(tableElement);
        recordsManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            recordsManager.setRowData(data["nomeFase"], data["punteggio_massimo"], data["nome"], data["cognome"], data["dataNascita"])
        });
    } else {

    }
});