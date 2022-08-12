module.exports = {
  sourceMaps: 'inline',
  presets: [
    [
      '@babel/preset-env',
      {
        targets: { node: 'current' }
      }
    ],
    [
      '@babel/preset-react',
      {
        useBuiltIns: true
      }
    ]
  ]
};
