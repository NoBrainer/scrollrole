import {Typography} from "@material-ui/core";
import {AbilityScoreAdjustmentsPropType} from "components/rules/AbilityScoreAdjustments";
import ChoiceList from "components/rules/ChoiceList";
import {FeaturesPropType} from "components/rules/Features";
import Paragraphs from "components/rules/Paragraphs";
import {ProficienciesPropType} from "components/rules/Proficiencies";
import RulesSection from "components/rules/RulesSection";
import {chain, includes, isEmpty, isObject} from "lodash";
import PropTypes from "prop-types";
import React from "react";
import {useSelector} from "react-redux";

function Choice(props) {
	const rulesList = useSelector((state) => state.rules.rulesList);
	const currentRules = rulesList.length > 0 ? rulesList[0] : {};
	const {lists} = currentRules;

	const {name, description, type, pick, options, from, allowDuplicates, key} = props;
	if (pick < 1) {
		console.log(`Ignoring 'choice' without a 'pick' attribute with a 1+ value`);
		return null;
	} else if (isEmpty(options) && isEmpty(from)) {
		console.log(`Ignoring 'choice' without either an 'options' or 'from' attribute [${name}]`);
		return null;
	}

	const otherProps = {};
	if (key) otherProps.key = key;

	const generateItems = () => {
		//TODO: support allowDuplicate
		//TODO: support use
		let items = options;
		if (items && !isEmpty(items)) return items;

		const {name, levels, types} = from;
		const filterByType = (item) => includes(types, item.type);
		const filterByLevel = (item) => includes(levels, item.level);
		if (isObject(from)) {
			const list = lists[name];
			if (!isEmpty(types) && !isEmpty(levels)) {
				items = chain(list).filter(filterByType).filter(filterByLevel).value();
			} else if (!isEmpty(types)) {
				items = chain(list).filter(filterByType).value();
			} else if (!isEmpty(levels)) {
				items = chain(list).filter(filterByLevel).value();
			} else {
				items = list;
			}
		} else {
			console.log(`Unable to determine items for 'choice' attribute`);
			items = [];
		}
		return items;
	};

	const items = generateItems();
	return (
		<RulesSection headerText={name} {...otherProps}>
			<Paragraphs paragraphs={description}/>
			<Typography>Type: {type}</Typography>
			{allowDuplicates && <Typography>Allow Duplicates: yes</Typography>}
			<Typography>Pick: {pick}</Typography>
			<ChoiceList items={items}/>
		</RulesSection>
	);
}

export const ChoicePropType = PropTypes.shape({
	name: PropTypes.string.isRequired,
	description: PropTypes.arrayOf(PropTypes.string),
	type: PropTypes.string.isRequired,
	pick: PropTypes.number.isRequired,
	options: PropTypes.oneOf([
		AbilityScoreAdjustmentsPropType,
		FeaturesPropType,
		ProficienciesPropType,
		PropTypes.string,
	]),
	from: PropTypes.shape({
		name: PropTypes.string.isRequired,
		levels: PropTypes.arrayOf(PropTypes.number),
		types: PropTypes.arrayOf(PropTypes.string),
	}),
	allowDuplicate: PropTypes.bool,
	use: PropTypes.string,
});

Choice.propTypes = ChoicePropType;

export default Choice