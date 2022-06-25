module.exports = {
  // Back-end Configuration
  env: {
    commonjs: true,
    es2021: true,
    node: true
  },
  extends: ['google'],
  parserOptions: {
    ecmaVersion: 'latest'
  },
  rules: {
    'arrow-spacing': ['error'],
    'comma-dangle': ['error', 'only-multiline'],
    'max-len': ['warn', 120],
    'new-cap': ['error', { capIsNewExceptions: ['Router'] }],
    'no-multiple-empty-lines': ['error', { max: 1, maxEOF: 1, maxBOF: 0 }],
    'object-curly-spacing': ['error', 'always'],
    'require-jsdoc': 'off',
    'space-before-function-paren': ['error', { asyncArrow: 'always', anonymous: 'always', named: 'never' }]
  },
  ignorePatterns: ['src/**/*.js', 'src/**/*.jsx'],
  overrides: [
    // Front-end configuration
    {
      files: ['src/**/*.js', 'src/**/*.jsx'],
      env: {
        browser: true,
        es2021: true
      },
      extends: ['plugin:react/recommended', 'google'],
      parserOptions: {
        ecmaFeatures: {
          jsx: true
        },
        ecmaVersion: 'latest',
        sourceType: 'module'
      },
      plugins: ['react']
    }
  ]
};
