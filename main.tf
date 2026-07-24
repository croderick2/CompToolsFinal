terraform {
	required_providers {
		docker = {
			source = "kreuzwerker/docker"
			version = "~> 3.0"
			}
			}
	}

provider "docker" {}


resource "docker_image" "page" {
	name = "comp-final:latest"

	build {
		context = "."
	}
}

resource "docker_container" "page" {
	name = "comp-final-container"
	image = docker_image.page.image_id

	ports {
		internal = 80
		external = 8081
		}
}
