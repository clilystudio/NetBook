package com.handmark.pulltorefresh.library;

public enum PullToRefreshBase$Mode
{
  public static Mode PULL_DOWN_TO_REFRESH;
  public static Mode PULL_UP_TO_REFRESH;
  private int mIntValue;

  static
  {
    PULL_FROM_END = new Mode("PULL_FROM_END", 2, 2);
    BOTH = new Mode("BOTH", 3, 3);
    MANUAL_REFRESH_ONLY = new Mode("MANUAL_REFRESH_ONLY", 4, 4);
    Mode[] arrayOfMode = new Mode[5];
    arrayOfMode[0] = DISABLED;
    arrayOfMode[1] = PULL_FROM_START;
    arrayOfMode[2] = PULL_FROM_END;
    arrayOfMode[3] = BOTH;
    arrayOfMode[4] = MANUAL_REFRESH_ONLY;
    a = arrayOfMode;
    PULL_DOWN_TO_REFRESH = PULL_FROM_START;
    PULL_UP_TO_REFRESH = PULL_FROM_END;
  }

  private PullToRefreshBase$Mode(int paramInt)
  {
    this.mIntValue = paramInt;
  }

  static Mode getDefault()
  {
    return PULL_FROM_START;
  }

  static Mode mapIntToValue(int paramInt)
  {
    for (Mode localMode : values())
      if (paramInt == localMode.getIntValue())
        return localMode;
    return getDefault();
  }

  final int getIntValue()
  {
    return this.mIntValue;
  }

  final boolean permitsPullToRefresh()
  {
    return (this != DISABLED) && (this != MANUAL_REFRESH_ONLY);
  }

  public final boolean showFooterLoadingLayout()
  {
    return (this == PULL_FROM_END) || (this == BOTH) || (this == MANUAL_REFRESH_ONLY);
  }

  public final boolean showHeaderLoadingLayout()
  {
    return (this == PULL_FROM_START) || (this == BOTH);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshBase.Mode
 * JD-Core Version:    0.6.0
 */