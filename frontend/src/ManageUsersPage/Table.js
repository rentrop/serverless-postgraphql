import React, { Component } from 'react';
import { Link } from 'react-router-dom';

import './Table.css'
import caretDownSvg from '../images/caret-down.svg'

class Table extends Component {

  renderSort(header) {
    return header.isSortable
      ? <img src={caretDownSvg} alt={`Sort by ${header.title}`} className="Table__header-caret" />
      : '';
  }

  render() {
    const { data, checkboxColumn } = this.props;

    return (
      <table className="Table">
        <thead>
          <tr>
            {this.props.headers.map((header, i) => {
              return <th key={i} scope="col" className="Table__header">
                {header.title} {this.renderSort(header)}
              </th>
            })}
          </tr>
        </thead>
        <tbody>
          {
            data.map((row, i) => {
              return (
                <tr key={i}>
                  { checkboxColumn && <td><input type="checkbox" /></td> }
                  { row.map((cell, i) => {
                     return cell.isLinked ? (
                        <td key={i} className="Table__content--linked">
                           <Link to={cell.link}>{ cell.content }</Link>
                        </td>
                       ) : (
                         <td key={i} className="Table__content">{ cell }</td>
                       )
                    })
                  }
                </tr>
              )
            })
          }
        </tbody>
      </table>
    );
  }

}

export default Table;
