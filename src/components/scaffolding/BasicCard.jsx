import { Card, CardContent } from '@mui/material';
import PropTypes from 'prop-types';
import React from 'react';

function BasicCard({ children, sx } = {}) {
  return (
    <Card>
      <CardContent sx={sx}>{children}</CardContent>
    </Card>
  );
}

BasicCard.propTypes = {
  children: PropTypes.node.isRequired,
  sx: PropTypes.object,
};

export default BasicCard;
