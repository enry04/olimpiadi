import FetchUtil from "../../common/js/fetch-util.js";
import WinnerManager from "./winner-manager.js";
import WinnersManager from "./winners-manager.js";

const winnerTable = document.querySelector(".winner-table");
await FetchUtil.postData("./php/read-winner.php").then((response) => {
    if (response.status == "success") {
        const winnerManager = new WinnerManager(winnerTable);
        winnerManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            winnerManager.setRowData(data["nome"], data["cognome"], data["dataNascita"], data["nomeIstituto"], data["nomeNazionalita"], data["punteggio"]);
        });
    } else {
        console.log(response.status);
    }
})

const winnersTable = document.querySelector(".winners-table");
await FetchUtil.postData("./php/read-winners.php").then((response) => {
    if (response.status == "success") {
        const winnersManager = new WinnersManager(winnersTable);
        winnersManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            winnersManager.setRowData(data["nomeSquadra"], data["totale_punteggio"] );
        });
    } else {
        console.log(response.status);
    }
})