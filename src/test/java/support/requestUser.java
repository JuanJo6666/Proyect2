package support;

import io.restassured.response.Response;

public class requestUser {
    apihelper api;
    public static Response responseuser;

    public requestUser() {
        api = new apihelper();
    }
    public void getUsers(){
        String url = "https://reqres.in/api/users";
        responseuser = api.get(url);
    }
    public void getUser(String id){
        String url = "https://reqres.in/api/users/"+id;
        responseuser = api.get(url);
    }
}
