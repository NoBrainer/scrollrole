import React from 'react';
import { Route, Routes } from 'react-router-dom';
import CharactersContent from 'components/pages/CharactersContent';
import HomeContent from 'components/pages/HomeContent';
import RulesForBackgrounds from 'components/pages/RulesForBackgrounds';
import RulesForClasses from 'components/pages/RulesForClasses';
import RulesForRaces from 'components/pages/RulesForRaces';
import RulesIntroduction from 'components/pages/RulesIntroduction';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import PagePadder from 'components/scaffolding/PagePadder';

function AppContent() {
  return (
    <main>
      <BasicWrapper margin='top'>
        <PagePadder>
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
        </PagePadder>
      </BasicWrapper>
    </main>
  );
}

export default AppContent;
