 import { DataResource } from "../services/DataResource";

 /* use an interface to guide us in designing the
 structure of what a burger */
 // export is similar to public keyword
 export interface BurgerProperties {
    title: string,
    description: string,
    add_ons: string[],
    price: number
 }

 export const Burger = new DataResource<BurgerProperties>(
    "http://localhost:3000/burgers"
 )