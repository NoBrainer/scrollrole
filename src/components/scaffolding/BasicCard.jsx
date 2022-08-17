import { Card, CardContent } from '@mui/material';
import React from 'react';

// TODO: fix
// eslint-disable-next-line react/prop-types
function BasicCard({ children, sx } = {}) {
  return (
    <Card>
      <CardContent sx={sx}>{children}</CardContent>
    </Card>
  );
}

export default BasicCard;
