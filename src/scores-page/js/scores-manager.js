class ScoresManager {
    constructor(tableElement) {
        this.rootElement = tableElement;
        this.headerValues = ["Nome gara", "punteggioMedio"];
        this.tHead = this.rootElement.createTHead();
        this.tBody = this.rootElement.createTBody();
    }

    init() {
        this.initElements();
    }

    initElements() {
        let row = this.tHead.insertRow();
        for (let i = 0; i < this.headerValues.length; i++) {
            let th = document.createElement("th");
            th.innerHTML = this.headerValues[i];
            row.appendChild(th);
        }
    }

    setRowData(compName, points) {
        let data = [compName, points];
        let row = this.tBody.insertRow();
        for (let i = 0; i < this.headerValues.length; i++) {
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }
}

export default ScoresManager;