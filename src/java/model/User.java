/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Administrator
 */
public class User {
    private int user_Id;
    private String user_Name;
    private String user_Password;
    private String user_Email;
    private String user_Phone;
    private String user_LinkSteam;
    private boolean user_Role;

    public User(int user_Id, String user_Name, String user_Password, String user_Email, String user_Phone, String user_LinkSteam, boolean user_Role) {
        this.user_Id = user_Id;
        this.user_Name = user_Name;
        this.user_Password = user_Password;
        this.user_Email = user_Email;
        this.user_Phone = user_Phone;
        this.user_LinkSteam = user_LinkSteam;
        this.user_Role = user_Role;
    }

    public User() {
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public String getUser_Name() {
        return user_Name;
    }

    public void setUser_Name(String user_Name) {
        this.user_Name = user_Name;
    }

    public String getUser_Password() {
        return user_Password;
    }

    public void setUser_Password(String user_Password) {
        this.user_Password = user_Password;
    }

    public String getUser_Email() {
        return user_Email;
    }

    public void setUser_Email(String user_Email) {
        this.user_Email = user_Email;
    }

    public String getUser_Phone() {
        return user_Phone;
    }

    public void setUser_Phone(String user_Phone) {
        this.user_Phone = user_Phone;
    }

    public String getUser_LinkSteam() {
        return user_LinkSteam;
    }

    public void setUser_LinkSteam(String user_LinkSteam) {
        this.user_LinkSteam = user_LinkSteam;
    }

    public boolean isUser_Role() {
        return user_Role;
    }

    public void setUser_Role(boolean user_Role) {
        this.user_Role = user_Role;
    }

    @Override
    public String toString() {
        return "User{" + "user_Id=" + user_Id + ", user_Name=" + user_Name + ", user_Password=" + user_Password + ", user_Email=" + user_Email + ", user_Phone=" + user_Phone + ", user_LinkSteam=" + user_LinkSteam + ", user_Role=" + user_Role + '}';
    }

    
    
    
}
