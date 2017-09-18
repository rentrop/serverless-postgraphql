import { configure } from '@storybook/react';

function loadStories() {
  require('../src/stories/userList.js');
}

configure(loadStories, module);
