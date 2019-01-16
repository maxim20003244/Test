package net.proselyte.springsecurityapp.service;

/**
 * Service for Security.
 * @author  Rotar Maxim
 * /2version 1.0
 */
public interface SecurityService {
    String findLoggerInUsername();
    void autoLogin(String username,String password);
}
