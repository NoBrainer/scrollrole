import React from "react";
import {makeStyles} from "@material-ui/core/styles";
import {Grid, Link, List, ListItem, Typography} from "@material-ui/core";

const useStyles = makeStyles((theme) => ({
	root: {},
	section: {
		padding: '20px',
	},
}));

const sections = [
	{
		title: "Credit to Others",
		links: [
			{text: "Destinie Carbone ~ Logo", href: "http://rainleaf.studio"},
			{text: "Game-icons.net ~ Other Icons", href: "http://game-icons.net"},
			{text: "More Details", href: "https://github.com/NoBrainer/scrollrole-react/wiki/Credit-to-Others"},
		]
	},
	{
		title: "Feedback/Bug Reporting",
		links: [
			{text: "Issue Tracker", href: "https://github.com/NoBrainer/scrollrole-react/issues"},
			{text: "Email the Developer", href: "mailto:vincent.incarvite@gmail.com"},
		]
	},
	{
		title: "Legal Stuff",
		links: [
			{text: "Privacy Policy", href: "https://github.com/NoBrainer/scrollrole-react/wiki/Privacy-Policy"},
			{text: "Terms of Use", href: "https://github.com/NoBrainer/scrollrole-react/wiki/Terms-of-Use"},
		]
	},
];

function AppFooter(props) {
	const classes = useStyles();
	return (
		<Grid className={classes.root}>
			<Grid container direction="row">
				<Grid item xs={false} sm={1} md={2}/>
				<Grid container item xs={12} sm={10} md={8}>
					{renderSections(classes)}
				</Grid>
				<Grid item xs={false} sm={1} md={2}/>
			</Grid>
		</Grid>
	);
}

function renderSections(classes) {
	return sections.map((section, i) => renderSection(classes, section, i))
}

function renderSection(classes, section, i) {
	return (
		<Grid item className={classes.section} xs={12} sm={6} md={4} key={i}>
			<Typography>{section.title}</Typography>
			<List>
				{section.links.map((link, i) => renderListItem(link, i))}
			</List>
		</Grid>
	);
}

function renderListItem(link, i) {
	return (
		<ListItem key={i}>
			<Link href={link.href} target="_blank" color="inherit" underline="hover">{link.text}</Link>
		</ListItem>
	);
}

export default AppFooter