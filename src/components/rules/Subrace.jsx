import {Accordion, AccordionDetails, AccordionSummary, Typography} from "@material-ui/core";
import {makeStyles} from "@material-ui/core/styles";
import {ExpandMore} from "@material-ui/icons";
import AbilityScoreAdjustment from "components/rules/AbilityScoreAdjustment";
import Choices from "components/rules/Choices";
import Description from "components/rules/Description";
import Equipment from "components/rules/Equipment";
import Features from "components/rules/Features";
import Proficiencies from "components/rules/Proficiencies";
import SuggestedCharacteristics from "components/rules/SuggestedCharacteristics";
import PropTypes from "prop-types";
import React from "react";

const useStyles = makeStyles((theme) => ({
	details: {
		flexDirection: "column",
	},
}));

function Subrace(props) {
	const classes = useStyles();
	const {subrace, summaryId} = props;
	const {
		abilityScoreAdjustments, age, alignment, choices, description, equipment, features, name, proficiencies,
		size, speed, suggestedCharacteristics
	} = subrace;

	return (
		<Accordion>
			<AccordionSummary expandIcon={<ExpandMore/>} aria-controls="race-panel-content" id={summaryId}>
				<Typography component="h2" variant="h5">{name}</Typography>
			</AccordionSummary>
			<AccordionDetails className={classes.details}>
				<Description description={description}/>
				<AbilityScoreAdjustment abilityScoreAdjustments={abilityScoreAdjustments}/>
				<Description titleOverride={"Age"} description={[age]}/>
				<Description titleOverride={"Alignment"} description={[alignment]}/>
				<Description titleOverride={"Size"} description={[size]}/>
				<Description titleOverride={"Speed"} description={[speed]}/>
				<Features features={features}/>
				<SuggestedCharacteristics suggestedCharacteristics={suggestedCharacteristics}/>
				<Equipment equipment={equipment}/>
				<Proficiencies proficiencies={proficiencies}/>
				<Choices choices={choices}/>
			</AccordionDetails>
		</Accordion>
	);
}

Subrace.propTypes = {
	subrace: PropTypes.object.isRequired,
	summaryId: PropTypes.string.isRequired,
};

export default Subrace