import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.http.server.configuration.hostname = "0.0.0.0" // this allows to connect to this server from all the device in the network
    app.logger.logLevel = .debug
    // register routes
    try routes(app)
}
