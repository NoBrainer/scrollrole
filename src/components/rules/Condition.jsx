import PropTypes from 'prop-types';
import React from 'react';
import { ProficiencyPropType } from 'components/rules/Proficiencies';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';

function Condition({ level, feature, proficiency } = {}) {
  // TODO: implement
  return (
    <RulesSection headerText='Condition'>
      <Paragraphs paragraphs='[Condition Placeholder]' />
    </RulesSection>
  );
}

Condition.propTypes = {
  level: PropTypes.number,
  feature: PropTypes.string,
  proficiency: ProficiencyPropType,
};

export const ConditionPropType = PropTypes.shape(Condition.propTypes);

export default Condition;
