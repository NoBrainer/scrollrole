import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import BasicList from 'components/scaffolding/BasicList';
import RulesSection from 'components/scaffolding/RulesSection';

function Proficiencies({ proficiencies, headerComponent } = {}) {
  if (isEmpty(proficiencies)) return null;

  const renderProficiency = ({ name, type } = {}) => {
    return `${type}: ${name}`;
  };

  return (
    <RulesSection headerText='Proficiencies' headerComponent={headerComponent}>
      <BasicList items={proficiencies.map(renderProficiency)} />
    </RulesSection>
  );
}

export const ProficiencyPropType = PropTypes.shape({
  name: PropTypes.string.isRequired,
  type: PropTypes.string.isRequired,
});

export const ProficienciesPropType = PropTypes.arrayOf(ProficiencyPropType);

Proficiencies.propTypes = {
  proficiencies: ProficienciesPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Proficiencies;
