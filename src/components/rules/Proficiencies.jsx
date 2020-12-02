import BasicList from "components/rules/BasicList";
import RulesSection from "components/rules/RulesSection";
import {isEmpty} from "lodash";
import PropTypes from "prop-types";
import React from "react";

function Proficiencies(props) {
	const {proficiencies} = props;

	if (isEmpty(proficiencies)) return null;

	const displayStrings = () => {
		return proficiencies.map((proficiency) => {
			const {name, type} = proficiency;
			return `${name} (${type})`;
		});
	};

	return (
		<RulesSection headerText="Proficiencies" children={
			<BasicList items={displayStrings()}/>
		}/>
	);
}

Proficiencies.propTypes = {
	proficiencies: PropTypes.arrayOf(
		PropTypes.shape({
			name: PropTypes.string.isRequired,
			type: PropTypes.string.isRequired,
		})
	),
};

export default Proficiencies