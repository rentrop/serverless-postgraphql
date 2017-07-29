import { configure } from '@storybook/react';

function loadStories() {
  require('../stories/adminCrossingList.js');
  require('../stories/userList.js');
}


configure(loadStories, module);
