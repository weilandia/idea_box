const path = require('path');
const webpack = require('webpack');

module.exports = {
  devtool: 'eval',
  entry: {
    main: [
      'webpack-hot-middleware/client', './react/index'
    ],
  },
  output: {
    path: path.join(__dirname, './app/assets'),
    filename: 'react_app.js',
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin()
  ],
  module: {
    loaders: [{
      test: /\.css$/,
      loader: "style-loader!css-loader"
    },{
      test: /\.jpe?g$|\.ico$|\.gif$|\.png$|\.svg$|\.woff$|\.ttf$|\.wav$|\.mp3$/,
      loader: 'file-loader?name=[name].[ext]'
      },{
      test: /\.js$/,
      loaders: ['babel'],
      "plugins": ["react-transform"],
      "extra": {
        "react-transform": {
          "transforms": [{
            "transform": "react-transform-hmr",
            "imports": ["react"],
            "locals": ["module"]
          }, {
            "transform": "react-transform-catch-errors",
            "imports": ["react", "redbox-react"]
          }]
        }
      },
      include: path.join(__dirname, 'react')
    }]
  }
};
