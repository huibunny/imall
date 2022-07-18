module.exports = {
    devServer: {
        disableHostCheck: true,
        host: '127.0.0.1',
        port: 8801,
        proxy: {
            '/api': {
                target: 'http://localhost:8401',
                secure: false,
                changeOrigin: true,
                ws: true,
                pathRewrite: {
                    '^/api': ''
                }
            }
        }
    },
    publicPath: '/',
    configureWebpack: {
        module:{
            rules:[{
                test: /\.mjs$/,
                include: /node_modules/,
                type: 'javascript/auto'
            }]
        }
    }
}
