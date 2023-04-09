import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("json") { req -> Response in
        let json = ["name": "John", "lastname": "Doe", "email": "johndoe@email.com", "hobbies" : ["Rugby", "TV", "NFL"]]
            let data = try JSONSerialization.data(withJSONObject: json)
            let body = Response.Body(data: data)
            let response = Response(status: .ok, headers: HTTPHeaders([("Content-Type", "application/json")]), body: body)
            return response
        }
}
