package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class AccountInfo extends Model {

    private int prevUnimpNotif;
    private String token;
    public AccountInfo(String String1, int int2) {
        token = String1;
        prevUnimpNotif = int2;
    }

    public AccountInfo() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static AccountInfo getByToken(String String1) {
    }

    public static AccountInfo getOrCreate(String String1) {
        AccountInfo AccountInfo2 = getByToken(String1);

        if (AccountInfo2 != null)
            return AccountInfo2;
        else {
            AccountInfo AccountInfo3 = new AccountInfo();

            AccountInfo3.setToken(String1);
            return AccountInfo3;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static int getPreUnimpCount(String String1) {
    }

    public int getPrevUnimpNotif() {
        return prevUnimpNotif;
    }

    public void setPrevUnimpNotif(int int1) {
        prevUnimpNotif = int1;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String String1) {
        token = String1;
    }
}
