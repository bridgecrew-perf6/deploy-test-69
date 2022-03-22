module.exports = {
	publicPath: "./",
	outputDir:"dist",
	assetsDir:"static",
	indexPath:"index.html",
	filenameHashing:true,
	devServer : {
		proxy:{
			"/api":{
				target:"localhost:4000",
				changeOrigin:true,
				secure:false,
				pathRewrite:{
					"^/api":""
				}
			}
		}
	}
}