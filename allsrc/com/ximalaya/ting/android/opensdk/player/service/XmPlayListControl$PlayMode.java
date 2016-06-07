package com.ximalaya.ting.android.opensdk.player.service;

public enum XmPlayListControl$PlayMode
{
  static
  {
    PLAY_MODEL_LIST = new PlayMode("PLAY_MODEL_LIST", 2);
    PLAY_MODEL_LIST_LOOP = new PlayMode("PLAY_MODEL_LIST_LOOP", 3);
    PLAY_MODEL_RANDOM = new PlayMode("PLAY_MODEL_RANDOM", 4);
    PlayMode[] arrayOfPlayMode = new PlayMode[5];
    arrayOfPlayMode[0] = PLAY_MODEL_SINGLE;
    arrayOfPlayMode[1] = PLAY_MODEL_SINGLE_LOOP;
    arrayOfPlayMode[2] = PLAY_MODEL_LIST;
    arrayOfPlayMode[3] = PLAY_MODEL_LIST_LOOP;
    arrayOfPlayMode[4] = PLAY_MODEL_RANDOM;
    ENUM$VALUES = arrayOfPlayMode;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayListControl.PlayMode
 * JD-Core Version:    0.6.0
 */