// We switched these to integers to match DB values to match the DB.
// It would be nice if we used Symbols instead.
// Ex:
//    export const LONGTERM = Symbol("LONGTERM");

export const OPEN = 1;
export const CLOSED = 2;
export const CAUTION = 3;
export const LONGTERM = 4;

export const strings = {
  1: 'Open',
  3: 'Caution',
  2: 'Closed',
  4: 'Long Term Closure'
};
