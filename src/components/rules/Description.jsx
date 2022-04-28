import { HEADER_COMPONENTS } from 'common/constants';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function Description({ headerText, description, headerComponent } = {}) {
  if (isEmpty(description)) return null;

  return (
    <RulesSection headerText={headerText} headerComponent={headerComponent}>
      <Paragraphs paragraphs={description} />
    </RulesSection>
  );
}

export const DescriptionPropType = PropTypes.arrayOf(PropTypes.oneOfType([PropTypes.number, PropTypes.string]));

Description.defaultProps = {
  headerText: 'Description',
};

Description.propTypes = {
  headerText: PropTypes.string,
  description: DescriptionPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Description;
