import { Box } from '@mui/material';
import React from 'react';
import AppContent from 'components/AppContent';
import AppFooter from 'components/AppFooter';
import AppHeader from 'components/AppHeader';

// TODO: add a11y

// TODO: Figure out an a11y menu
// - Menubar Example: https://www.w3.org/TR/wai-aria-practices-1.1/examples/menubar/menubar-1/menubar-1.html
// - More in depth discussion for Menubar: https://www.evinced.com/blog/a11y-nav-menus/
// - General Navigation Guidance: https://usability.yale.edu/web-accessibility/articles/navigation

function App() {
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <AppHeader />
      <AppContent />
      <AppFooter />
    </Box>
  );
}

export default App;
