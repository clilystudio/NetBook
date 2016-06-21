package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "AccountInfo")
public class AccountInfo extends Model {
    @Column(name = "prev_unimp_notif")
    private int prevUnimpNotif;
    @Column(name = "token")
    private String token;

    public AccountInfo() {
    }

    public AccountInfo(String string, int n) {
        this.token = string;
        this.prevUnimpNotif = n;
    }

    public static AccountInfo getByToken(String string) {
        List list = new Select().from(AccountInfo.class).where("token = ?", string).execute();
        if (list.size() == 0) {
            return null;
        }
        return (AccountInfo) list.get(0);
    }

    public static AccountInfo getOrCreate(String string) {
        AccountInfo accountInfo = AccountInfo.getByToken(string);
        if (accountInfo != null) {
            return accountInfo;
        }
        AccountInfo accountInfo2 = new AccountInfo();
        accountInfo2.setToken(string);
        return accountInfo2;
    }

    public static int getPreUnimpCount(String string) {
        List list = new Select().from(AccountInfo.class).where("token = ?", string).execute();
        if (list.size() == 0) {
            return 0;
        }
        return ((AccountInfo) list.get(0)).getPrevUnimpNotif();
    }

    public int getPrevUnimpNotif() {
        return this.prevUnimpNotif;
    }

    public void setPrevUnimpNotif(int n) {
        this.prevUnimpNotif = n;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String string) {
        this.token = string;
    }
}
