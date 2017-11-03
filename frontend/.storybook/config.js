import { configure } from '@storybook/react';
import '../src/index.css';

function loadStories() {
  require('../src/stories/userList.js');
  require('../src/stories/crossingListItem.js');
  require('../src/stories/statusToggle.js');
  require('../src/stories/crossingListItemLocation.js');
  require('../src/stories/crossingListItemDatetime.js');
  require('../src/stories/crossingListHeader.js');
  require('../src/stories/crossingStatusHistory.js');
}

configure(loadStories, module);
