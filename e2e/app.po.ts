import { browser, element, by } from 'protractor';

export class NotesToSharePage {
  navigateTo() {
    return browser.get('/');
  }

  getParagraphText() {
    return element(by.css('NTS-root h1')).getText();
  }
}
