package com.ushaqi.zhuishushenqi.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import java.util.Date;

@Table(name="DnsCache")
public class DnsCacheRecord extends Model
{

  @Column(name="expiredTime")
  private Date expiredTime;

  @Column(name="host")
  private String host;

  @Column(name="ip")
  private String ip;

  public Date getExpiredTime()
  {
    return this.expiredTime;
  }

  public String getHost()
  {
    return this.host;
  }

  public String getIp()
  {
    return this.ip;
  }

  public boolean isExpired()
  {
    return new Date().getTime() > this.expiredTime.getTime();
  }

  public void setExpiredTime(Date paramDate)
  {
    this.expiredTime = paramDate;
  }

  public void setHost(String paramString)
  {
    this.host = paramString;
  }

  public void setIp(String paramString)
  {
    this.ip = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.db.DnsCacheRecord
 * JD-Core Version:    0.6.0
 */