package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "question")
public class Question implements Serializable {
    private static final long serialVersionUID = -6242110760472438895L;
    private Long id;
    private String name;
    private String phoneNumber;
    private String eMail;
    private String message;
    private boolean regularCustomer;
    private Date createDate;
    private Date reviewDate;
    private int version;

    public Question() {
        this.createDate = new Date();
    }

    public Question(String name, String phoneNumber, String eMail) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.eMail = eMail;
        this.createDate = new Date();
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
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name = "PHONE_NUMBER")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Column(name = "E_MAIL")
    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    @Column(name = "MESSAGE")
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Column(name = "IS_REGULAR_CUSTOMER")
    public boolean isRegularCustomer() {
        return regularCustomer;
    }

    public void setRegularCustomer(boolean regularCustomer) {
        this.regularCustomer = regularCustomer;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "REG_DATE")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "REVIEW_DATE")
    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", eMail='" + eMail + '\'' +
                ", message='" + message + '\'' +
                ", isRegularCustomer=" + regularCustomer +
                '}';
    }
}