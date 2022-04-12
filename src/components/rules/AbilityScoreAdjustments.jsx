import { HEADER_COMPONENTS } from 'common/constants';
import BasicList from 'components/rules/BasicList';
import RulesSection from 'components/rules/RulesSection';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function AbilityScoreAdjustments({ abilityScoreAdjustments, headerComponent } = {}) {
  if (isEmpty(abilityScoreAdjustments)) return null;

  const renderAbilityScoreAdjustment = ({ ability, modifier } = {}) => {
    const sign = modifier > 0 ? '+' : '';
    return `${ability} ${sign}${modifier}`;
  };

  return (
    <RulesSection headerText='Ability Score Adjustments' headerComponent={headerComponent}>
      <BasicList items={abilityScoreAdjustments.map(renderAbilityScoreAdjustment)} />
    </RulesSection>
  );
}

export const AbilityScoreAdjustmentPropType = PropTypes.shape({
  ability: PropTypes.string.isRequired,
  modifier: PropTypes.number.isRequired,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
});

export const AbilityScoreAdjustmentsPropType = PropTypes.arrayOf(AbilityScoreAdjustmentPropType);

AbilityScoreAdjustments.propTypes = {
  abilityScoreAdjustments: AbilityScoreAdjustmentsPropType,
};

export default AbilityScoreAdjustments;
