// We switched these to integers to match DB values to match the DB.
// It would be nice if we used Symbols instead.
// Ex:
//    export const LONGTERM = Symbol("LONGTERM");
import openIcon from 'images/marker-open-small.svg';
import cautionIcon from 'images/marker-caution-small.svg';
import closedIcon from 'images/marker-closed-small.svg';
import longTermIcon from 'images/marker-long-term-small.svg';

export const OPEN = 1;
export const CLOSED = 2;
export const CAUTION = 3;
export const LONGTERM = 4;

export const statusNames = {
  1: 'Open',
  2: 'Closed',
  3: 'Caution',
  4: 'Closed Longterm',
};

export const statusIcons = {
  1: openIcon,
  2: closedIcon,
  3: cautionIcon,
  4: longTermIcon,
};

export const displayedInputs = {
  1: {
    notes: true,
    reason: false,
    duration: false,
  },
  2: {
    notes: true,
    reason: true,
    duration: false,
  },
  3: {
    notes: true,
    reason: true,
    duration: false,
  },
  4: {
    notes: true,
    reason: true,
    duration: true,
  },
};
