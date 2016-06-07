package com.ximalaya.ting.android.opensdk.model.live.program;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class ProgramList extends XimalayaResponse
{
  private List<Program> mProgramList;

  public List<Program> getmProgramList()
  {
    return this.mProgramList;
  }

  public void setmProgramList(List<Program> paramList)
  {
    this.mProgramList = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.program.ProgramList
 * JD-Core Version:    0.6.0
 */