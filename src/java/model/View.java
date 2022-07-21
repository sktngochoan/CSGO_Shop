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
public class View {
    private String viewDate;
    private int viewLogin;
    private int viewnonLogin;
    private int order;

    public View(String viewDate, int viewLogin, int viewnonLogin, int order) {
        this.viewDate = viewDate;
        this.viewLogin = viewLogin;
        this.viewnonLogin = viewnonLogin;
        this.order = order;
    }

    public View() {
    }

    public String getViewDate() {
        return viewDate;
    }

    public void setViewDate(String viewDate) {
        this.viewDate = viewDate;
    }

    public int getViewLogin() {
        return viewLogin;
    }

    public void setViewLogin(int viewLogin) {
        this.viewLogin = viewLogin;
    }

    public int getViewnonLogin() {
        return viewnonLogin;
    }

    public void setViewnonLogin(int viewnonLogin) {
        this.viewnonLogin = viewnonLogin;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
    
    
}
