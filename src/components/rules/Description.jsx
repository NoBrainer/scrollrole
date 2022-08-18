import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';

function Description({ headerText, description, headerComponent } = {}) {
  if (isEmpty(description)) return null;

  return (
    <RulesSection headerText={headerText} headerComponent={headerComponent}>
      <Paragraphs paragraphs={description} />
    </RulesSection>
  );
}

export const DescriptionPropType = PropTypes.arrayOf(PropTypes.oneOfType([PropTypes.number, PropTypes.string]));

Description.propTypes = {
  headerText: PropTypes.string,
  description: DescriptionPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

Description.defaultProps = {
  headerText: 'Description',
};

export default Description;
