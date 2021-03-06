package com.surveyapp.controller;
import com.surveyapp.model.Program;
import com.surveyapp.service.program.ProgramService;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
import javax.json.JsonObjectBuilder;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * Create HTTP GET, PUT, POST, DELETE method for Module
 * @author Tran Van Hung, Nguyen Dang Khoa
 *@return Response for the front-end
 */

@Path("/programs")
public class ProgramRoute {
    private ProgramService programService = new ProgramService();

    // GET method for showing all tuples in Program table in DB and show in the front-end
    @GET
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public List<Program> getAll(){
        List<Program> programList = new ArrayList<>();
        try{
            programList = programService.getAll();
            return programList;
        }catch (Exception exception){
            System.out.println(exception);
        }
        return programList;
    }

    //GET method for searching function (optional)
    @GET
    @Path("/{code}")
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public Program getByCode(@PathParam("code") String code) {
        Program program = new Program();
        try{
            program = programService.get(code);
            return program;
        }catch (Exception exception){
            System.out.println(exception);
        }
        return program;
    }

    //POST method for inserting new tuple into the Faculty table in DB and show in the front-end
    @POST
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public Response insert(Program program) {
        try{
            programService.save(program);
            return Response.status(Response.Status.OK).build();
        } catch(Exception exception){
            JsonObjectBuilder jsonObjectBuilder = Json.createObjectBuilder();
            jsonObjectBuilder.add("message", exception.getMessage());
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(jsonObjectBuilder.build()).build();
        }
    }

    //PUT method for modifying a tuple in the Program table in DB and show in the front-end
    @PUT
    @Path("/{code}")
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public Response update(@PathParam("code") String code, Program program){
        try{
            programService.update(code, program);
            return Response.status(Response.Status.OK).build();
        } catch(Exception exception){
            JsonObjectBuilder jsonObjectBuilder = Json.createObjectBuilder();
            jsonObjectBuilder.add("message", exception.getMessage());
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(jsonObjectBuilder.build()).build();
        }
    }

    //DELETE method for deleting a tuple from the Program table in DB and show in the front-end
    @DELETE
    @Path("/{code}")
    public Response delete(@PathParam("code") String code){
        try{
            programService.delete(code);
            return Response.status(Response.Status.OK).build();
        } catch(Exception exception){
            JsonObjectBuilder jsonObjectBuilder = Json.createObjectBuilder();
            jsonObjectBuilder.add("message", exception.getMessage());
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(jsonObjectBuilder.build()).build();
        }
    }
}
