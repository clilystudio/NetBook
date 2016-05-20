package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="AccountInfo")
public class AccountInfo extends Model
{

  @Column(name="prev_unimp_notif")
  private int prevUnimpNotif;

  @Column(name="token", unique=true)
  private String token;

  public AccountInfo()
  {
  }

  public AccountInfo(String paramString, int paramInt)
  {
    this.token = paramString;
    this.prevUnimpNotif = paramInt;
  }

  public static AccountInfo getByToken(String paramString)
  {
    List localList = new Select().from(AccountInfo.class).where("token = ?", new Object[] { paramString }).execute();
    if (localList.size() == 0)
      return null;
    return (AccountInfo)localList.get(0);
  }

  public static AccountInfo getOrCreate(String paramString)
  {
    AccountInfo localAccountInfo1 = getByToken(paramString);
    if (localAccountInfo1 != null)
      return localAccountInfo1;
    AccountInfo localAccountInfo2 = new AccountInfo();
    localAccountInfo2.setToken(paramString);
    return localAccountInfo2;
  }

  public static int getPreUnimpCount(String paramString)
  {
    List localList = new Select().from(AccountInfo.class).where("token = ?", new Object[] { paramString }).execute();
    if (localList.size() == 0)
      return 0;
    return ((AccountInfo)localList.get(0)).getPrevUnimpNotif();
  }

  public int getPrevUnimpNotif()
  {
    return this.prevUnimpNotif;
  }

  public String getToken()
  {
    return this.token;
  }

  public void setPrevUnimpNotif(int paramInt)
  {
    this.prevUnimpNotif = paramInt;
  }

  public void setToken(String paramString)
  {
    this.token = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.AccountInfo
 * JD-Core Version:    0.6.2
 */