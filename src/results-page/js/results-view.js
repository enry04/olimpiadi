import FetchUtil from "../../common/js/fetch-util.js";
import ResultsManager from "./results-manager.js";

const elements = {
    name: document.querySelector(".name-text"),
    surname: document.querySelector(".surname-text"),
    btn: document.querySelector(".submit-btn"),
}
const errorText = document.querySelector(".error-text");
const titleText = document.querySelector(".title-text");
const tableElement = document.querySelector("table");

elements.btn.addEventListener("click", async (event) => {
    tableElement.innerHTML = "";
    const data = {
        name: elements.name.value,
        surname: elements.surname.value,
    }
    await FetchUtil.postData("./php/read-results.php", data).then((response) => {
        if (response.status == "success") {
            tableElement.classList.toggle("hide", false);
            titleText.classList.toggle("hide", false);
            errorText.classList.toggle("hide", true);
            const resultsManager = new ResultsManager(tableElement);
            resultsManager.init();
            let parseData = JSON.parse(response.data);
            parseData.forEach(data => {
                resultsManager.setRowData(data["nomeGara"], data["data"], data["punteggio"] );
            });

        } else {
            console.log(response.status);
            tableElement.classList.toggle("hide", true);
            titleText.classList.toggle("hide", true);
            errorText.classList.toggle("hide", false);
        }
    })
});





