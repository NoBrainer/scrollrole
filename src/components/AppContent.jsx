import { Grid } from '@mui/material';
import React from 'react';
import { Route, Routes } from 'react-router-dom';
import CharactersContent from 'components/pages/CharactersContent';
import HomeContent from 'components/pages/HomeContent';
import RulesForBackgrounds from 'components/pages/RulesForBackgrounds';
import RulesForClasses from 'components/pages/RulesForClasses';
import RulesForRaces from 'components/pages/RulesForRaces';
import RulesIntroduction from 'components/pages/RulesIntroduction';

function AppContent() {
  return (
    <main>
      <Grid container direction='row'>
        <Grid item xs={false} sm={1} md={2} />
        <Grid container item xs={12} sm={10} md={8}>
          <Routes>
            <Route index element={<HomeContent />} />
            <Route path='/home' element={<HomeContent />} />
            <Route path='/characters' element={<CharactersContent />} />
            <Route path='/rules' element={<RulesIntroduction />} />
            <Route path='/rules/introduction' element={<RulesIntroduction />} />
            <Route path='/rules/backgrounds' element={<RulesForBackgrounds />} />
            <Route path='/rules/classes' element={<RulesForClasses />} />
            <Route path='/rules/races' element={<RulesForRaces />} />
          </Routes>
        </Grid>
        <Grid item xs={false} sm={1} md={2} />
      </Grid>
    </main>
  );
}

export default AppContent;
