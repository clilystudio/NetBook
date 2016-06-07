package com.handmark.pulltorefresh.library;

public enum PullToRefreshBase$State
{
  private int mIntValue;

  static
  {
    PULL_TO_REFRESH = new State("PULL_TO_REFRESH", 1, 1);
    RELEASE_TO_REFRESH = new State("RELEASE_TO_REFRESH", 2, 2);
    REFRESHING = new State("REFRESHING", 3, 8);
    MANUAL_REFRESHING = new State("MANUAL_REFRESHING", 4, 9);
    OVERSCROLLING = new State("OVERSCROLLING", 5, 16);
    State[] arrayOfState = new State[6];
    arrayOfState[0] = RESET;
    arrayOfState[1] = PULL_TO_REFRESH;
    arrayOfState[2] = RELEASE_TO_REFRESH;
    arrayOfState[3] = REFRESHING;
    arrayOfState[4] = MANUAL_REFRESHING;
    arrayOfState[5] = OVERSCROLLING;
    a = arrayOfState;
  }

  private PullToRefreshBase$State(int paramInt)
  {
    this.mIntValue = paramInt;
  }

  static State mapIntToValue(int paramInt)
  {
    for (State localState : values())
      if (paramInt == localState.getIntValue())
        return localState;
    return RESET;
  }

  final int getIntValue()
  {
    return this.mIntValue;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshBase.State
 * JD-Core Version:    0.6.0
 */