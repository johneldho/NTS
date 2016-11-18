import { NotesToSharePage } from './app.po';

describe('notes-to-share App', function() {
  let page: NotesToSharePage;

  beforeEach(() => {
    page = new NotesToSharePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('NTS works!');
  });
});
