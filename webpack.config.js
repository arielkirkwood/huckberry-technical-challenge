'use strict';

const webpack = require('webpack');
const path    = require('path');
const environment = process.env.NODE_ENV || 'development';
const isProduction = environment === 'production';

function generateResourceRule(basePath) {
  return {
    test: /\.(jpe?g|gif|png|svg|woff2?|eot|ttf)$/,
    include: basePath,
    type: 'asset/resource',
    generator: {
      filename: '[path][name].[ext]'
    }
  };
}

const contextPath = path.resolve(__dirname, './app/javascript');
const rootPath = path.resolve(__dirname, './');

module.exports = {
  context: contextPath,
  mode: isProduction ? 'production' : 'development',
  devtool: 'source-map',
  entry: {
    application: './application.js'
  },
  output: {
    filename: '[name].js',
    sourceMapFilename: '[name].js.map',
    path: path.resolve(__dirname, 'app/assets/builds'),
  },
  resolve: {
    extensions: ['.js', '.ts', '.tsx', '.json'],
    modules: [path.resolve(__dirname, './app/javascript'), 'node_modules']
  },
  module: {
    rules: [
      generateResourceRule(path.join(contextPath, 'assets')),
      generateResourceRule(path.join(rootPath, 'node_modules')),
      {
        test: /\.s?css$/,
        use: [
          {
            loader: require.resolve('style-loader')
          },
          {
            loader: require.resolve('css-loader')
          }
        ]
      },
      {
        test: /\.[tj]sx?$/,
        use: [
          {
            loader: require.resolve('babel-loader'),
            options: {
              cacheDirectory: true,
              presets: [
                [
                  '@babel/preset-env',
                  { modules: false, targets: { node: 'current' } }
                ]
              ],
              compact: true
            }
          }
        ]
      }
    ]
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
