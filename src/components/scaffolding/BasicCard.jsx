import { Card, CardContent } from '@mui/material';
import React from 'react';

function BasicCard({ children, sx } = {}) {
  return (
    <Card>
      <CardContent sx={sx}>{children}</CardContent>
    </Card>
  );
}

export default BasicCard;
