import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import { DescriptionPropType } from 'components/rules/Description';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';

function Feature({ name, description, headerComponent } = {}) {
  return (
    <RulesSection headerText={name} headerComponent={headerComponent}>
      <Paragraphs paragraphs={description} />
    </RulesSection>
  );
}

// TODO: support {stat, modifier, per} attributes, like Hill Dwarf's Dwarven Toughness
Feature.propTypes = {
  name: PropTypes.string.isRequired,
  description: DescriptionPropType,
  shortDescription: PropTypes.string,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export const FeaturePropType = PropTypes.shape(Feature.propTypes);

export default Feature;
