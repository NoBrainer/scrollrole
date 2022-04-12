import { Grid, Typography } from '@mui/material';
import BasicCard from 'components/scaffolding/BasicCard';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import React from 'react';

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
