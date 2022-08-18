import { Grid, Typography } from '@mui/material';
import PropTypes from 'prop-types';
import React from 'react';
import BasicCard from 'components/scaffolding/BasicCard';
import BasicWrapper from 'components/scaffolding/BasicWrapper';

function PageWrapper({ children, title } = {}) {
  return (
    <Grid container direction='column'>
      <BasicCard sx={{ '&:last-child': { paddingBottom: 2 } }}>
        <Typography component='h1' variant='h1'>
          {title}
        </Typography>
      </BasicCard>
      <BasicWrapper margin='top'>{children}</BasicWrapper>
    </Grid>
  );
}

PageWrapper.propTypes = {
  children: PropTypes.node.isRequired,
  title: PropTypes.string.isRequired,
};

export default PageWrapper;
