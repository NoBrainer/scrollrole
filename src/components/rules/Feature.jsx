import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import { DescriptionPropType } from 'components/rules/Description';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';

// TODO: fix
// eslint-disable-next-line react/prop-types
function Feature({ name, description, headerComponent, key } = {}) {
  return (
    <RulesSection headerText={name} headerComponent={headerComponent} key={key}>
      <Paragraphs paragraphs={description} />
    </RulesSection>
  );
}

// TODO: support {stat, modifier, per} attributes, like Hill Dwarf's Dwarven Toughness
export const FeaturePropType = PropTypes.shape({
  name: PropTypes.string.isRequired,
  description: DescriptionPropType,
  shortDescription: PropTypes.string,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
  key: PropTypes.string,
});

Feature.propTypes = FeaturePropType;

export default Feature;
