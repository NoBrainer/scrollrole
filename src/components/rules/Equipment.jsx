import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import BasicList from 'components/scaffolding/BasicList';
import RulesSection from 'components/scaffolding/RulesSection';

function Equipment({ equipment, headerComponent } = {}) {
  if (isEmpty(equipment)) return null;

  return (
    <RulesSection headerText='Starting Equipment' headerComponent={headerComponent}>
      <BasicList items={equipment} />
    </RulesSection>
  );
}

export const EquipmentPropType = PropTypes.string;

export const EquipmentsPropType = PropTypes.arrayOf(EquipmentPropType);

Equipment.propTypes = {
  equipment: EquipmentsPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Equipment;
