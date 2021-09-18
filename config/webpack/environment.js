const { environment } = require('@rails/webpacker')
environment.plugins.append('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Poppper: ['popper.js', 'default']
    })
)

module.exports = environment
