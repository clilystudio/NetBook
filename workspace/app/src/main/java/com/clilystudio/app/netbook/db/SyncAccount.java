package com.clilystudio.app.netbook.db;

import android.support.design.widget.am;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.util.Date;
import java.util.List;

@Table(name="SyncAccount")
public class SyncAccount extends Model
{

  @Column(name="uid")
  public String uid;

  @Column(name="update_time")
  public Date updateTime;

  public static boolean needSync(Date paramDate)
  {
    if (paramDate == null)
      return false;
    Account localAccount = am_CommonUtils.e();
    if (localAccount == null)
      return false;
    String str = localAccount.getUser().getId();
    List localList = new Select().from(SyncAccount.class).where("uid = ?", new Object[] { str }).execute();
    if (!localList.isEmpty())
      return ((SyncAccount)localList.get(0)).updateTime.getTime() < paramDate.getTime();
    return true;
  }

  public static void save(Date paramDate)
  {
    Account localAccount = am_CommonUtils.e();
    if (localAccount == null)
      return;
    String str = localAccount.getUser().getId();
    List localList = new Select().from(SyncAccount.class).where("uid = ?", new Object[] { str }).execute();
    SyncAccount localSyncAccount;
    if (localList.isEmpty())
    {
      localSyncAccount = new SyncAccount();
      localSyncAccount.uid = str;
    }
    while (true)
    {
      localSyncAccount.updateTime = paramDate;
      localSyncAccount.save();
      return;
      localSyncAccount = (SyncAccount)localList.get(0);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.SyncAccount
 * JD-Core Version:    0.6.2
 */