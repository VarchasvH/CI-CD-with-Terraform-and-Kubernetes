data "google_container_engine_versions" "defualt"{
    location = "us-centeral1-c"
}
data "google_client_config" "current"{
}

resource "google_container_cluster" "default"{
    name = "my-first-cluster"
    location = "us-centeral1-c"
    initial_node_count = 3
    main_master_version = data.google_container_engine_versions.latest_master_version

    node config{
        machine_type = "g1-small"
        disk_size_gb = 32
    }
    provisioner "local-exec"{
        when = destroy
        command = "sleep 90"
    }
}
