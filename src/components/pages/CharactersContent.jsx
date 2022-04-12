import { usePageState } from 'common/pageState';
import BasicCard from 'components/scaffolding/BasicCard';
import PageWrapper from 'components/scaffolding/PageWrapper';
import React from 'react';

function CharactersContent() {
  const [pageState] = usePageState();

  const renderContent = () => {
    if (pageState.sectionId) return `[Character Builder - ${pageState.sectionId} - UNDER CONSTRUCTION]`;
    return `[UNDER CONSTRUCTION]`;
  };

  return (
    <PageWrapper title='Character Builder'>
      <BasicCard>{renderContent()}</BasicCard>
    </PageWrapper>
  );
}

export default CharactersContent;
