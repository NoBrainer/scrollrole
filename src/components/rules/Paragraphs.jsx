import { Typography } from '@mui/material';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function Paragraphs({ paragraphs } = {}) {
  if (isEmpty(paragraphs)) return null;

  return paragraphs.map((paragraph, i) => {
    const isLastParagraph = i === paragraphs.length - 1;
    return (
      <Typography key={i} paragraph={!isLastParagraph}>
        {paragraph}
      </Typography>
    );
  });
}

Paragraphs.propTypes = {
  paragraphs: PropTypes.arrayOf(PropTypes.oneOfType([PropTypes.number, PropTypes.string])),
};

export default Paragraphs;
