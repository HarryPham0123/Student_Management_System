package com.surveyapp.service.faculty;
import com.surveyapp.model.Faculty;
import com.surveyapp.service.DAO;
import com.surveyapp.util.DBUtil;
import com.surveyapp.util.ObjectConverter;

import java.sql.*;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;

/**
 *
 * Create FacultyDAO to interact with table faculty in DB
 * @author Tran Van Hung, Phan Cong Huy, Nguyen Dang Khoa
 *
 */


public class FacultyDAO implements DAO<Faculty> {
    private Connection connection = new DBUtil().getConnection();
    private String getAllScript = "SELECT * FROM faculty";
    private String getByCodeScript = "SELECT * FROM faculty WHERE Fcode = ?";
    private String saveScript = "INSERT INTO faculty (Fcode, Fname) VALUES(?, ?)";
    private String updateScript = "UPDATE faculty SET Fcode = ?, Fname = ? WHERE Fcode = ?";
    private String deleteScript = "DELETE FROM faculty WHERE  Fcode = ?";

    private void executeInTransaction(Consumer<Connection> action) {
        try {
            connection.setAutoCommit(false);
            action.accept(connection);
            connection.commit();
        } catch (SQLException sqlException) {
            try {
                connection.rollback();
            } catch (SQLException exception) {
                exception.printStackTrace();
            }
            sqlException.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            }
        }
    }


    @Override
    public List<Faculty> getAll() throws Exception {
        List<Faculty> facultyList = null;
        //Get database connection
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(getAllScript);
        //Convert to Object type
        facultyList = (List<Faculty>) ObjectConverter.toObject(Faculty.class, resultSet);

        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            }
        }
        return facultyList;
    }

    @Override
    public Optional<Faculty> get(String code) throws Exception {
        //Get database connection
        PreparedStatement preparedStatement = connection.prepareStatement(getByCodeScript);
        //Set parameters
        preparedStatement.setString(1, code);
        ResultSet resultSet = preparedStatement.executeQuery();
        //Convert to Object type
        Faculty faculty = (Faculty) ObjectConverter.toObject(Faculty.class, resultSet);
        return Optional.ofNullable(faculty);
    }

    @Override
    public void save(Faculty faculty) throws Exception {
        //Get database connection
        PreparedStatement preparedStatement = connection.prepareStatement(saveScript);
        //Set parameters
        preparedStatement.setString(1, faculty.getCode());
        preparedStatement.setString(2, faculty.getName());
        preparedStatement.executeUpdate();

        if(connection != null) {
            try {
                connection.close();
            } catch (Exception exception) {
                exception.printStackTrace();
            }
        }

    }

    @Override
    public void update(String code, Faculty faculty) throws Exception {
        //Get database connection
        PreparedStatement preparedStatement = connection.prepareStatement(updateScript);
        //Set parameters
        preparedStatement.setString(1, faculty.getCode());
        preparedStatement.setString(2, faculty.getName());
        preparedStatement.setString(3, code);
        preparedStatement.executeUpdate();

        if(connection != null) {
            try {
                connection.close();
            } catch (Exception exception) {
                exception.printStackTrace();
            }
        }
    }

    @Override
    public void delete(String code) throws Exception {
        //Get database connection
        PreparedStatement preparedStatement = connection.prepareStatement(deleteScript);
        //Set parameters
        preparedStatement.setString(1, code);
        preparedStatement.executeUpdate();

        if(connection != null) {
            try {
                connection.close();
            } catch(Exception exception) {
                exception.printStackTrace();
            }
        }
    }
}
