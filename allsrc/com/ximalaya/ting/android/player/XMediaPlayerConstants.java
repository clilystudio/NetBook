package com.ximalaya.ting.android.player;

import android.os.Environment;

public class XMediaPlayerConstants
{
  public static final String APP_BASE_DIR;
  public static final int CON_TIME_OUT = 10000;
  public static final int DEFAULT_CHUNK_SIZE = 65536;
  public static int DOWNLOAD_QUEUE_SIZE = 0;
  public static final String HLS_TS_DIR;
  public static final String INCOM_AUDIO_FILE_DIRECTORY;
  public static final int SEND_BUFFER_QUEUE_SIZE = 3;
  public static final int TIME_OUT = 30000;
  public static boolean isDebug = false;
  public static final boolean isDebugPlayer;

  static
  {
    DOWNLOAD_QUEUE_SIZE = 10;
    APP_BASE_DIR = Environment.getExternalStorageDirectory() + "/ting";
    INCOM_AUDIO_FILE_DIRECTORY = APP_BASE_DIR + "/player_caching/files/incomplete";
    HLS_TS_DIR = APP_BASE_DIR + "/hls";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaPlayerConstants
 * JD-Core Version:    0.6.0
 */