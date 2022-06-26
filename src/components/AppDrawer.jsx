import { Home, MenuBook, People } from '@mui/icons-material';
import { Box, Collapse, Divider, Drawer, List, ListItemButton, ListItemIcon, ListItemText } from '@mui/material';
import { APP_BAR_HEIGHT, APP_DRAWER_WIDTH } from 'common/constants';
import { buildUrl, usePageState } from 'common/pageState';
import { selectIsDrawerOpen } from 'common/redux/slices/drawerSlice';
import React from 'react';
import { useSelector } from 'react-redux';
import { Link } from 'react-router-dom';

function AppDrawer() {
  const isDrawerOpen = useSelector(selectIsDrawerOpen);
  const [pageState] = usePageState();

  const renderListItem = (text, pageId, IconEle) => {
    const url = buildUrl(pageId);
    const isSelected = pageState.pageId === pageId;
    return (
      <ListItemButton key={pageId} component={Link} to={url} selected={isSelected} aria-label={`${text} page nav`}>
        <ListItemIcon>
          <IconEle />
        </ListItemIcon>
        <ListItemText primary={text} />
      </ListItemButton>
    );
  };
  const renderSubListItem = (text, pageId, sectionId, isDefault) => {
    const url = buildUrl(pageId, sectionId);
    const isSelected = pageState.sectionId === sectionId || (isDefault && !sectionId);
    return (
      <ListItemButton key={url} component={Link} to={url} selected={isSelected}>
        <ListItemText inset primary={text} />
      </ListItemButton>
    );
  };
  const renderSubListForCharacters = () => {
    //TODO: under construction
    return <Collapse in={pageState.pageId === 'characters'} />;
  };
  const renderSubListForRules = () => {
    return (
      <Collapse in={pageState.pageId === 'rules'}>
        <List>
          {renderSubListItem('Introduction', 'rules', 'introduction', true)}
          {renderSubListItem('Backgrounds', 'rules', 'backgrounds')}
          {renderSubListItem('Classes', 'rules', 'classes')}
          {renderSubListItem('Races', 'rules', 'races')}
        </List>
      </Collapse>
    );
  };

  return (
    <Drawer
      variant='persistent'
      anchor='left'
      open={isDrawerOpen}
      sx={{
        flexShrink: 0,
        width: APP_DRAWER_WIDTH,
        '& .MuiDrawer-paper': {
          width: APP_DRAWER_WIDTH,
        },
      }}
    >
      <Box
        sx={{
          alignItems: 'center',
          display: 'flex',
          height: `${APP_BAR_HEIGHT}px`,
          justifyContent: 'flex-start',
          padding: (theme) => theme.spacing(0, 1),
        }}
      />
      <Divider />
      <List>
        {renderListItem('Home', 'home', Home)}
        <Divider />
        {renderListItem('Character Builder', 'characters', People)}
        {renderSubListForCharacters()}
        <Divider />
        {renderListItem('Rules Customizer', 'rules', MenuBook)}
        {renderSubListForRules()}
      </List>
    </Drawer>
  );
}

export default AppDrawer;
