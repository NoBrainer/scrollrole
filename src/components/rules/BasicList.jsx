import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function BasicList({ items, ordered } = {}) {
  if (isEmpty(items)) return null;

  const renderItems = () => items.map((item, i) => <li key={i}>{item}</li>);

  if (ordered) {
    return <ol children={renderItems()} />;
  } else {
    return <ul children={renderItems()} />;
  }
}

BasicList.propTypes = {
  items: PropTypes.arrayOf(PropTypes.string),
  ordered: PropTypes.bool,
};

export default BasicList;
