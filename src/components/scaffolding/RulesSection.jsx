import { Grid, Typography } from '@mui/material';
import { HEADER_COMPONENTS } from 'common/constants';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import PropTypes from 'prop-types';
import React from 'react';

function RulesSection({ headerText, children, headerComponent } = {}) {
  return (
    <BasicWrapper margin='bottom'>
      <Grid container direction='row'>
        <Grid item xs={12}>
          <Typography component={headerComponent} variant={headerComponent}>
            {headerText}
          </Typography>
        </Grid>
        <Grid item xs={12} children={children} />
      </Grid>
    </BasicWrapper>
  );
}

RulesSection.defaultProps = {
  headerComponent: 'h3',
};

RulesSection.propTypes = {
  headerText: PropTypes.string.isRequired,
  children: PropTypes.oneOfType([PropTypes.arrayOf(PropTypes.node), PropTypes.node]),
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default RulesSection;
