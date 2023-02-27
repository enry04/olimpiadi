class LeaderboardManager {
    constructor(parentElement, currentTB) {
        this.rootElement = parentElement;
        this.headerValues = ["Posizione", "Nome", "Cognome", "Data di nascita", "Punteggio"];
        this.elements = {};
        this.currentTB = currentTB;
        const parser = new DOMParser();
        const templateString = `<section><h3 class="title-text" id="${this.currentTB}"></h3><table id="${this.currentTB}"></table></section>`;
        const templateElement = parser.parseFromString(templateString, "text/html");
        this.template = templateElement.documentElement.querySelector("body > section");
    }

    init() {
        this.initElements();
    }

    initElements() {
        this.rootElement.appendChild(this.template);
        this.tHead = this.rootElement.querySelector(`table[id="${this.currentTB}"]`).createTHead();
        this.tBody = this.rootElement.querySelector(`table[id="${this.currentTB}"]`).createTBody();
        let row = this.tHead.insertRow();
        for (let i = 0; i < this.headerValues.length; i++) {
            let th = document.createElement("th");
            th.innerHTML = this.headerValues[i];
            row.appendChild(th);
        }
        this.elements = {
            title: this.rootElement.querySelector(`h3[id="${this.currentTB}"]`),
        }
    }

    setTitle(title){
        this.elements.title.innerHTML = title;
    }

    setRowData(position, name, surname, bornDate, points) {
        let data = [position, name, surname, bornDate, points];
        let row = this.tBody.insertRow();
        for (let i = 0; i < this.headerValues.length; i++) {
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }
}

export default LeaderboardManager;