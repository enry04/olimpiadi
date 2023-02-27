import FetchUtil from "../../common/js/fetch-util.js";
import LeaderboardManager from "./leaderboard-manager.js";

FetchUtil.postData("./php/read-leaderboard.php").then((response) => {
    if (response.status == "success") {
        let parseData = JSON.parse(response.data);
        let count = 0;
        let currentPosition = 1;
        let leaderboardManager;
        parseData.forEach(data => {
            if (count % 5 == 0) {
                leaderboardManager = new LeaderboardManager(document.querySelector("main"), count);
                leaderboardManager.init();
                currentPosition = 1;
            }
            leaderboardManager.setTitle(data["nomeGara"]);
            leaderboardManager.setRowData(currentPosition, data["nome"], data["cognome"], data["dataNascita"], data["punteggio"]);
            count++;
            currentPosition++;

        });
    } else {
        console.log(response.status);
    }
})