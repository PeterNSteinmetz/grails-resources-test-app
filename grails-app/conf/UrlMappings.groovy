class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/localSpec"(view: "/localSpec")
        "/remoteSpec"(view: "/remoteSpec")

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
