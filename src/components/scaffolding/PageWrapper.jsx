import { Grid, Typography } from '@mui/material';
import React from 'react';
import BasicCard from 'components/scaffolding/BasicCard';
import BasicWrapper from 'components/scaffolding/BasicWrapper';

// TODO: fix
// eslint-disable-next-line react/prop-types
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

export default PageWrapper;
