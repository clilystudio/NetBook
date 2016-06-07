package com.xiaomi.mipush.sdk;

import java.util.List;

public class MiPushCommandMessage
  implements PushMessageHandler.a
{
  private static final long serialVersionUID = 1L;
  private String category;
  private String command;
  private List<String> commandArguments;
  private String reason;
  private long resultCode;

  public String getCategory()
  {
    return this.category;
  }

  public String getCommand()
  {
    return this.command;
  }

  public List<String> getCommandArguments()
  {
    return this.commandArguments;
  }

  public String getReason()
  {
    return this.reason;
  }

  public long getResultCode()
  {
    return this.resultCode;
  }

  public void setCategory(String paramString)
  {
    this.category = paramString;
  }

  public void setCommand(String paramString)
  {
    this.command = paramString;
  }

  public void setCommandArguments(List<String> paramList)
  {
    this.commandArguments = paramList;
  }

  public void setReason(String paramString)
  {
    this.reason = paramString;
  }

  public void setResultCode(long paramLong)
  {
    this.resultCode = paramLong;
  }

  public String toString()
  {
    return "command={" + this.command + "}, resultCode={" + this.resultCode + "}, reason={" + this.reason + "}, category={" + this.category + "}, commandArguments={" + this.commandArguments + "}";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.MiPushCommandMessage
 * JD-Core Version:    0.6.0
 */