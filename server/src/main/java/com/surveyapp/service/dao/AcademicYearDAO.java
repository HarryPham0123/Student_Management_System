package com.surveyapp.service.dao;

import com.surveyapp.model.AcademicYear;
import com.surveyapp.util.DBUtil;
import com.surveyapp.util.ObjectConverter;

import java.sql.*;
import java.util.List;
import java.util.Optional;

public class AcademicYearDAO implements DAO<AcademicYear> {
    private Connection connection = new DBUtil().getConnection();
    private String getAllScript = "SELECT * FROM academic_year";
    private String getByCodeScript = "SELECT * FROM academic_year WHERE AYcode = ?";
    @Override
    public List<AcademicYear> getAll() {
        List<AcademicYear> academicYearList = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(getAllScript);
            academicYearList = (List<AcademicYear>) ObjectConverter.toObject(AcademicYear.class, resultSet);
        } catch (Exception exception) {
            exception.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException sqlException) {
                    sqlException.printStackTrace();
                }
            }
        }
        return academicYearList;
    }

    @Override
    public Optional<AcademicYear> get(String code) { //code inputted by FE
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(getByCodeScript);
            preparedStatement.setString(1, code);
            ResultSet resultSet = preparedStatement.executeQuery();
            AcademicYear academicYear = (AcademicYear) ObjectConverter.toObject(AcademicYear.class, resultSet);
            return Optional.ofNullable(academicYear);
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
    }

    @Override
    public void save(AcademicYear academicYear) {

    }

    @Override
    public void update(AcademicYear academicYear) {

    }

    @Override
    public void delete(AcademicYear academicYear) {

    }
}
