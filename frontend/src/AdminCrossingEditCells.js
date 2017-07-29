import React from 'react'

class AdminCrossingEditCells extends React.Component {

  render () {
    return (
      <div className='pa3 bg-black-05 ma3'>
        <form>
          <div>
            <input type="radio" id="statusChoiceOpen"
             name="status" value="open"/>
            <label for="statusChoiceOpen">Open</label>

            <input type="radio" id="statusChoiceClosed"
             name="status" value="closed"/>
            <label for="statusChoiceClosed">Closed</label>

            <input type="radio" id="statusChoiceCaution"
             name="status" value="caution"/>
            <label for="statusChoiceCaution">Caution</label>

            <input type="radio" id="statusChoiceLongTermClosure"
             name="status" value="longTermClosure"/>
            <label for="statusChoiceLongTermClosure">Long Term Closure</label>
          </div>
        </form>
      </div>
    );
  }
}

export default AdminCrossingEditCells;
