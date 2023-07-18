package com.registration_v1.model;

import java.sql.ResultSet;

public interface DAOService {
    public void connectDB();
    public boolean verifyCredentials(String email, String password);
    public void saveReg(String name,String age, String weight, String city, String email, String mobile, String bloodgroup);
    public ResultSet getAllReg();
    public void deleteReg(String email);
    public void updateReg(String email, String mobile);
    public void closeDB();
}
