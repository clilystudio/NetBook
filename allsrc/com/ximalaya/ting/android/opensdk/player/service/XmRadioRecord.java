package com.ximalaya.ting.android.opensdk.player.service;

public class XmRadioRecord extends XmBaseRecord
{
  private long mProgramId;
  private long mScheduleId;

  public long getProgramId()
  {
    return this.mProgramId;
  }

  public long getScheduleId()
  {
    return this.mScheduleId;
  }

  public void setProgramId(long paramLong)
  {
    this.mProgramId = paramLong;
  }

  public void setScheduleId(long paramLong)
  {
    this.mScheduleId = paramLong;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmRadioRecord
 * JD-Core Version:    0.6.0
 */