import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import Feature, { FeaturePropType } from 'components/rules/Feature';
import BasicWrapper from 'components/scaffolding/BasicWrapper';

function Features({ features, headerComponent } = {}) {
  if (isEmpty(features)) return null;

  return (
    <BasicWrapper>
      {features.map((feature, i) => (
        <Feature {...feature} key={`Feature-${i}`} headerComponent={headerComponent}></Feature>
      ))}
    </BasicWrapper>
  );
}

export const FeaturesPropType = PropTypes.arrayOf(FeaturePropType);

Features.propTypes = {
  features: FeaturesPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Features;
