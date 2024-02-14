import { Burger, BurgerProperties } from "./models/Burger";

// The exclamation mark tells typeScript that the element exists in the DOM.
// If exclamation mark is removed, this will result to an error.
const rootElement = document.querySelector('.root')!

function createBurgerHTMLTemplate(burger: BurgerProperties): string {
    return `
    <div class="burger">
      <h2>${burger.title}</h2>
      <p class="add_ons">${burger.add_ons.join(", ")}</p>
      <p>${burger.description}</p>
      <span>${burger.price} Php</span>
    </div>
    `
}

// parent = element in the DOM where we want to attach the HTML template.
// Element = a type in typescipt that represents any DOM element
function attachTemplate(templates: string[], parent: Element): void {
    // el = template element
    const el = document.createElement('template')

    for(const t of templates){
        el.innerHTML += t
    }

    parent.append(el.content)
}

// load the data when the document is ready inside
// the browser
document.addEventListener("DOMContentLoaded", async () => {
    // load the Burger data
    const burgers = await Burger.loadAllItems()

    // // test if function is working
    // console.log("from index.ts")
    // console.log(burgers)

    // create template string or an html template
    // for each burger
    const burgerHTMLTemplates = burgers.map(createBurgerHTMLTemplate)

    // attach the html burger templates to the DOM
    attachTemplate(burgerHTMLTemplates, rootElement)
})