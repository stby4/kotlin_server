package net.pelata.plugins

import io.ktor.server.plugins.defaultheaders.*
import io.ktor.server.plugins.conditionalheaders.*
import io.ktor.server.plugins.compression.*
import io.ktor.server.application.*

const val DEFLATE_THRESHOLD : Long = 1024

fun Application.configureHTTP() {
    install(DefaultHeaders) {
        header("Strict-Transport-Security", "max-age=63072000; includeSubDomains; preload")
    }
    install(ConditionalHeaders)
    install(Compression) {
        gzip {
            priority = 1.0
        }
        deflate {
            priority = 10.0
            minimumSize(DEFLATE_THRESHOLD) // condition
        }
    }

}
