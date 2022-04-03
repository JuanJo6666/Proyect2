package support;

import io.restassured.response.Response;
import objetcs.payloadUser;

public class requestUser {
    apihelper api;
    public static Response responseuser;
    payloadUser user;

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

    public void createUser(String nombre,String puesto){
        String url= "https://reqres.in/api/users";
        String user ="{\"name\":\""+nombre+"\",\"job\": \""+puesto+"\"}";
        //user = new payloadUser(nombre,puesto);
        responseuser=api.post(url,user);
    }
    public void updateUserput(String id,String nombre,String puesto){
        String url ="https://reqres.in/api/users/"+id;
        user = new payloadUser(nombre, puesto);
        responseuser= api.put(url,user);
    }
    public void updateUserPach(String id,String nombre,String puesto){
        String url ="https://reqres.in/api/users/"+id;
        String user = "{\"job\": \""+puesto+ "\"" +
                "}";
        responseuser= api.patch(url,user);
    }
}
