package support;

import io.restassured.response.Response;
import static io.restassured.RestAssured.given;


public class apihelper {
    public Response get(String url){
        Response response = given().get(url);
        return response;
    }
    public Response post(String url,Object payload){
        Response response = given().body(payload).contentType("application/json").post (url);
        return response;
    }

}
