import { ExpandMore } from '@mui/icons-material';
import { Accordion, AccordionDetails, AccordionSummary, Typography } from '@mui/material';
import PropTypes from 'prop-types';
import React from 'react';
import AbilityScoreAdjustments, { AbilityScoreAdjustmentsPropType } from 'components/rules/AbilityScoreAdjustments';
import Choices, { ChoicesPropType } from 'components/rules/Choices';
import Description, { DescriptionPropType } from 'components/rules/Description';
import Equipment from 'components/rules/Equipment';
import Features, { FeaturesPropType } from 'components/rules/Features';
import Proficiencies, { ProficienciesPropType } from 'components/rules/Proficiencies';
import Subraces, { SubracesPropType } from 'components/rules/Subraces';
import SuggestedCharacteristics from 'components/rules/SuggestedCharacteristics';

function Race({
  race: {
    name,
    description,
    abilityScoreAdjustments,
    speed,
    features,
    suggestedCharacteristics,
    equipment,
    proficiencies,
    choices,
    subraces,
  } = {},
  summaryId,
} = {}) {
  return (
    <Accordion>
      <AccordionSummary expandIcon={<ExpandMore />} aria-controls='race-panel-content' id={summaryId}>
        <Typography component='h2' variant='h2'>
          {name}
        </Typography>
      </AccordionSummary>
      <AccordionDetails sx={{ flexDirection: 'column' }}>
        <Description description={description} />
        <AbilityScoreAdjustments abilityScoreAdjustments={abilityScoreAdjustments} />
        <Description headerText='Speed' description={[`${speed}`]} />
        <Features features={features} />
        <SuggestedCharacteristics suggestedCharacteristics={suggestedCharacteristics} />
        <Equipment equipment={equipment} />
        <Proficiencies proficiencies={proficiencies} />
        <Choices choices={choices} />
        <Subraces subraces={subraces} />
      </AccordionDetails>
    </Accordion>
  );
}

export const RacePropType = PropTypes.shape({
  name: PropTypes.string.isRequired,
  description: DescriptionPropType,
  abilityScoreAdjustments: AbilityScoreAdjustmentsPropType,
  speed: PropTypes.number,
  features: FeaturesPropType,
  proficiencies: ProficienciesPropType,
  choices: ChoicesPropType,
  subraces: SubracesPropType,
});

Race.propTypes = {
  race: RacePropType.isRequired,
  summaryId: PropTypes.string.isRequired,
};

export default Race;
