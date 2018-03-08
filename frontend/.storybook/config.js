import { configure } from '@storybook/react';
import '../src/index.css';

function loadStories() {
  require('../src/stories/userList.js');
  require('../src/stories/crossingListItem.js');
  require('../src/stories/statusToggle.js');
  require('../src/stories/crossingListItemLocation.js');
  require('../src/stories/crossingListHeader.js');
  require('../src/stories/crossingDetails.js');
}

configure(loadStories, module);
