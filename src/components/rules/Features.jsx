import { HEADER_COMPONENTS } from 'common/constants';
import Feature, { FeaturePropType } from 'components/rules/Feature';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function Features({ features, headerComponent } = {}) {
  if (isEmpty(features)) return null;

  return (
    <BasicWrapper
      children={features.map((feature, i) => {
        return Feature({
          ...feature,
          key: `Feature-${i}`,
          headerComponent,
        });
      })}
    />
  );
}

export const FeaturesPropType = PropTypes.arrayOf(FeaturePropType);

Features.propTypes = {
  features: FeaturesPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Features;
