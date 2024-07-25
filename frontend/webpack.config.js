const CompressionPlugin = require('compression-webpack-plugin');

module.exports = {
    mode: 'production',
    entry: './src/index.js',
    output: {
        filename: 'bundle.js',
        path: __dirname + '/dist'
    },
    plugins: [
        new CompressionPlugin({
            test: /\.js(\?.*)?$/i,
        }),
    ],
};
