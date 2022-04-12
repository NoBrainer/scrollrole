import { ExpandMore } from '@mui/icons-material';
import { Accordion, AccordionDetails, AccordionSummary, Typography } from '@mui/material';
import Choices from 'components/rules/Choices';
import Description from 'components/rules/Description';
import Equipment from 'components/rules/Equipment';
import Features from 'components/rules/Features';
import Proficiencies from 'components/rules/Proficiencies';
import PropTypes from 'prop-types';
import React from 'react';

function Class({
  clazz: {
    name,
    hitDice,
    baseHitPoints,
    proficiencies,
    equipment,
    proficiencyBonus,
    spellCasting,
    abilityScoreImprovementLevels,
    features,
    choices,
    unlockables,
  } = {},
  summaryId,
} = {}) {
  return (
    <Accordion>
      <AccordionSummary expandIcon={<ExpandMore />} aria-controls='class-panel-content' id={summaryId}>
        <Typography component='h2' variant='h2'>
          {name}
        </Typography>
      </AccordionSummary>
      <AccordionDetails sx={{ flexDirection: 'column' }}>
        <Description headerText='Hit Dice' description={[hitDice]} />
        <Description headerText='Base Hit Points' description={[baseHitPoints]} />
        <Proficiencies proficiencies={proficiencies} />
        <Equipment equipment={equipment} />
        <Description headerText='Proficiency Bonus' description={[proficiencyBonus]} />
        <Description headerText='Ability Score Improvement Levels' description={['[UNDER CONSTRUCTION]']} />
        <Features features={features} />
        <Choices choices={choices} />
        <Description headerText='Unlockables' description={['[UNDER CONSTRUCTION]']} />
      </AccordionDetails>
    </Accordion>
  );
}

export const ClassPropType = PropTypes.shape({
  name: PropTypes.string.isRequired,
  description: PropTypes.arrayOf(PropTypes.string),
});

Class.propTypes = {
  clazz: ClassPropType.isRequired,
  summaryId: PropTypes.string.isRequired,
};

export default Class;
