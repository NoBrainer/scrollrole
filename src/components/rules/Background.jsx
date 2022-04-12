import { ExpandMore } from '@mui/icons-material';
import { Accordion, AccordionDetails, AccordionSummary, Typography } from '@mui/material';
import Choices, { ChoicesPropType } from 'components/rules/Choices';
import Description from 'components/rules/Description';
import Equipment, { EquipmentsPropType } from 'components/rules/Equipment';
import Features, { FeaturesPropType } from 'components/rules/Features';
import Proficiencies, { ProficiencyPropType } from 'components/rules/Proficiencies';
import SuggestedCharacteristics, { SuggestedCharacteristicsPropType } from 'components/rules/SuggestedCharacteristics';
import PropTypes from 'prop-types';
import React from 'react';

function Background({
  background: { name, description, features, suggestedCharacteristics, equipment, proficiencies, choices } = {},
  summaryId,
} = {}) {
  return (
    <Accordion>
      <AccordionSummary expandIcon={<ExpandMore />} aria-controls='background-panel-content' id={summaryId}>
        <Typography component='h2' variant='h2'>
          {name}
        </Typography>
      </AccordionSummary>
      <AccordionDetails sx={{ flexDirection: 'column' }}>
        <Description description={description} />
        <Features features={features} />
        <SuggestedCharacteristics suggestedCharacteristics={suggestedCharacteristics} />
        <Equipment equipment={equipment} />
        <Proficiencies proficiencies={proficiencies} />
        <Choices choices={choices} />
      </AccordionDetails>
    </Accordion>
  );
}

export const BackgroundPropType = PropTypes.shape({
  name: PropTypes.string.isRequired,
  description: PropTypes.arrayOf(PropTypes.string),
  features: FeaturesPropType,
  suggestedCharacteristics: SuggestedCharacteristicsPropType,
  equipment: EquipmentsPropType,
  proficiencies: PropTypes.arrayOf(ProficiencyPropType),
  choices: ChoicesPropType,
});

Background.propTypes = {
  background: BackgroundPropType.isRequired,
  summaryId: PropTypes.string.isRequired,
};

export default Background;
