import FetchUtil from "../../common/js/fetch-util.js";
import TeamsManager from "./teams-manager.js";

const tableElement = document.querySelector("table");
FetchUtil.postData("./php/read-teams.php").then((response) => {
    if (response.status == "success") {
        const teamsManager = new TeamsManager(tableElement);
        teamsManager.init();
        let parseData = JSON.parse(response.data);
        parseData.forEach(data => {
            teamsManager.setRowData(data["nomeSquadra"], data["numPartecipanti"], data["etaMedia"]);
        });
    } else {
        console.log(response.status);
    }
})