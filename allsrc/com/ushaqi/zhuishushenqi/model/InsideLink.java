package com.ushaqi.zhuishushenqi.model;

public class InsideLink
{
  private String mLabel;
  private final InsideLinkType mType;
  private final String mValue;

  public InsideLink(InsideLinkType paramInsideLinkType, String paramString)
  {
    this(paramInsideLinkType, paramString, null);
  }

  public InsideLink(InsideLinkType paramInsideLinkType, String paramString1, String paramString2)
  {
    this.mType = paramInsideLinkType;
    this.mValue = paramString1;
    setLabel(paramString2);
  }

  public String getLabel()
  {
    return this.mLabel;
  }

  public InsideLinkType getType()
  {
    return this.mType;
  }

  public String getValue()
  {
    return this.mValue;
  }

  public void setLabel(String paramString)
  {
    this.mLabel = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.InsideLink
 * JD-Core Version:    0.6.0
 */