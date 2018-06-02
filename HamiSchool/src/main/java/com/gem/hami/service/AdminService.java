package com.gem.hami.service;

public interface AdminService {
    public boolean login(int ID,String password);

    public boolean register(int ID,String password);

    public boolean foget(String ID,String password,String verification);
}
