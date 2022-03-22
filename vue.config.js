module.exports = {
	publicPath: "http://175.178.192.105/demo1",
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