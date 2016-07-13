package com.clilystudio.netbook.db;

import com.clilystudio.netbook.am;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.model.Account;

import java.util.Date;
import java.util.List;

@Table(name = "SyncAccount")
public class SyncAccount extends Model {
    @Column(name = "uid")
    public String uid;
    @Column(name = "update_time")
    public Date updateTime;

    public static boolean needSync(Date date) {
        if (date == null) {
            return false;
        }
        Account account = am.getAccount();
        if (account == null) {
            return false;
        }
        String string = account.getUser().getId();
        List list = new Select().from(SyncAccount.class).where("uid = ?", string).execute();
        return list.isEmpty() || ((SyncAccount) list.get(0)).updateTime.getTime() < date.getTime();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void save(Date date) {
        SyncAccount syncAccount;
        Account account = am.getAccount();
        if (account == null) {
            return;
        }
        String string = account.getUser().getId();
        List list = new Select().from(SyncAccount.class).where("uid = ?", string).execute();
        if (list.isEmpty()) {
            syncAccount = new SyncAccount();
            syncAccount.uid = string;
        } else {
            syncAccount = (SyncAccount) list.get(0);
        }
        syncAccount.updateTime = date;
        syncAccount.save();
    }
}
