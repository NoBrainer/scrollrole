import { Grid } from '@mui/material';
import PropTypes from 'prop-types';
import React from 'react';

function PagePadder({ children } = {}) {
  return (
    <Grid container direction='row'>
      <Grid item xs={false} sm={1} md={2} />
      <Grid container item xs={12} sm={10} md={8}>
        {children}
      </Grid>
    </Grid>
  );
}

PagePadder.propTypes = {
  children: PropTypes.node.isRequired,
};

export default PagePadder;
