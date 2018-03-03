package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "users")
public class User implements Serializable {
    private static final long serialVersionUID = -6895249234865774622L;
    private Long id;
    private String username;
    private String name;
    private String surname;
    private String password;
    private UserRole authority;
    private boolean enabled;
    private Date regDate;
    private int version;

    public User() {
        this.regDate = new Date();
        //NOP
    }

    public User(String username, String password, UserRole authority) {
        this.username = username;
        this.password = password;
        this.authority = authority;
        this.regDate = new Date();
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "USERNAME")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "SURNAME")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Column(name = "PASSWORD")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "AUTHORITY")
    public UserRole getAuthority() {
        return authority;
    }

    public void setAuthority(UserRole authority) {
        this.authority = authority;
    }

    @Column(name = "ENABLED")
    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "REG_DATE")
    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    @Version
    @Column(name = "VERSION")
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", password='" + password + '\'' +
                ", authority=" + authority +
                ", enabled=" + enabled +
                ", regDate=" + regDate +
                ", version=" + version +
                '}';
    }
}