import { Box } from '@mui/material';
import { chain, includes, isEmpty, isString } from 'lodash';
import PropTypes from 'prop-types';
import React, { useMemo } from 'react';

const normalizedString = (s) => (isString(s) ? s.toLowerCase().trim() : '');

const normalizedArray = (val) => {
  const arr = normalizedString(val).split(/(,\s*|\s+)/);
  return chain(arr).map(normalizedString).without('').value();
};

const buildStyles = ({ margin, padding }) => {
  const styles = {
    '&:last-child': {
      marginBottom: 0,
    },
  };
  const normalizedMarginArr = normalizedArray(margin);
  const normalizedPaddingArr = normalizedArray(padding);
  if (isEmpty(normalizedMarginArr) && isEmpty(normalizedPaddingArr)) return styles;

  if (includes(normalizedMarginArr, 'all')) {
    styles.margin = SPACING;
  } else {
    if (includes(normalizedMarginArr, 'left')) styles.marginLeft = SPACING;
    if (includes(normalizedMarginArr, 'right')) styles.marginRight = SPACING;
    if (includes(normalizedMarginArr, 'top')) styles.marginTop = SPACING;
    if (includes(normalizedMarginArr, 'bottom')) styles.marginBottom = SPACING;
  }

  if (includes(normalizedPaddingArr, 'all')) {
    styles.padding = SPACING;
  } else {
    if (includes(normalizedPaddingArr, 'left')) styles.paddingLeft = SPACING;
    if (includes(normalizedPaddingArr, 'right')) styles.paddingRight = SPACING;
    if (includes(normalizedPaddingArr, 'top')) styles.paddingTop = SPACING;
    if (includes(normalizedPaddingArr, 'bottom')) styles.paddingBottom = SPACING;
  }

  return styles;
};

const SPACING = '20px'; // TODO: maybe use 3?

function BasicWrapper({ children, margin, padding } = {}) {
  const styles = useMemo(() => buildStyles({ margin, padding }), [margin, padding]);
  return <Box sx={styles}>{children}</Box>;
}

BasicWrapper.propTypes = {
  margin: PropTypes.string,
  padding: PropTypes.string,
  children: PropTypes.oneOfType([PropTypes.arrayOf(PropTypes.node), PropTypes.node]).isRequired,
};

export default BasicWrapper;
