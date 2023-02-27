import FetchUtil from "../../common/js/fetch-util.js";
import ScoresManager from "./scores-manager.js";

const tableElement = document.querySelector("table");
FetchUtil.postData("./php/read-scores.php").then((response) => {
    if (response.status == "success") {
        const scoresManager = new ScoresManager(tableElement);
        scoresManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            scoresManager.setRowData(data["nomeGara"], data["punteggioMedio"]);
        });
    } else {
        console.log(response.status);
    }
})