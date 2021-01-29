import {Controller} from "stimulus"
import { Turbo } from "@hotwired/turbo-rails"

export default class extends Controller {
    handleSearch(event) {

        event.preventDefault();
        const url = this.element.href;
        console.log(url);
        // Turbo.clearCache();
        // Turbo.visit(url);
    }
}
