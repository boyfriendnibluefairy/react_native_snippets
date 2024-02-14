import { Burger, BurgerProperties } from "./models/Burger"

// "as" keyword is used for type assertion
/* Sometimes even if we use exclamation mark to circumvent the null safety features of typescript, we could simply use type assertion because some DOM elements doesn't have the properties that the function needs */

/* In this file, we begin to collect inputs from create.html */

/* example: find input element with name="title" */
const titleInput = document.querySelector(
    'input[name="title"]'
) as HTMLInputElement

const descriptionInput = document.querySelector(
    'textarea[name="description"]'
) as HTMLTextAreaElement

// // when you hover over "form" variable and it shows you
// // union type with null, then add exclamation mark
// const form = document.querySelector('form[class="create"]')!

// or another way:
const form = document.querySelector('.create') as HTMLFormElement

// listen for submit event
// e = event object, whatver that is
form.addEventListener('submit', async (e) => {
    // preventDefault() prevents webpage from refreshing
    e.preventDefault()

    // grab form data and then create HTML template
    // to display these data
    const data = new FormData(form)
    
    // to get various data from the form,
    // we will access each info using the name attribute.
    const newBurger: BurgerProperties = {
        title: data.get('title') as string,
        description: data.get('description') as string,
        // use getAll() for checkboxes
        add_ons: data.getAll('add_ons') as string[],
        // get() usually returns a string.
        // that's why we need to use parseInt()
        // but we also need to type assert so that
        // parseInt() isn't confused.
        price: parseInt(data.get('price') as string)
    }

    // add newBurger to db.json.
    // import Burger.ts to get Burger model.
    const response = await Burger.saveItem(newBurger)

    // initial error:
    // " Property 'ok' does not exist on type 'void' "
    // to resolve this, return Promise<Response>
    // from DataResource.ts saveItem function
    if(!response.ok){
        console.log("Burger not saved.")
    }
    if(response.ok){
        // return current page to homepage
        window.location.href = '/'
    }
})