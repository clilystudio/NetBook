package com.ximalaya.ting.android.player;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class XMediaPlayer$EventHandler extends Handler
{
  private XMediaPlayer mMediaPlayer;

  public XMediaPlayer$EventHandler(XMediaPlayer paramXMediaPlayer1, XMediaPlayer paramXMediaPlayer2, Looper paramLooper)
  {
    super(paramLooper);
    this.mMediaPlayer = paramXMediaPlayer2;
  }

  public void handleMessage(Message paramMessage)
  {
    if ((XMediaPlayer.access$0(this.this$0) == 12) && (paramMessage.what != 100))
      Logger.log(XMediaplayerJNI.Tag, "handleMessage11 mPlayState NOT_ARCH_SUPPORT");
    do
    {
      do
      {
        boolean bool;
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  Logger.log(XMediaplayerJNI.Tag, "handleMessage11 mPlayState:" + XMediaPlayer.access$0(this.this$0));
                  switch (paramMessage.what)
                  {
                  case 0:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 99:
                  case 201:
                  default:
                    Logger.log(XMediaplayerJNI.Tag, "Unknown message type " + paramMessage.what);
                    return;
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 100:
                  case 200:
                  case 202:
                  }
                }
                while (XMediaPlayer.access$1(this.this$0) == null);
                XMediaPlayer.access$1(this.this$0).onPrepared(this.mMediaPlayer);
                return;
              }
              while (XMediaPlayer.access$2(this.this$0) == null);
              XMediaPlayer.access$2(this.this$0).onCompletion(this.mMediaPlayer);
              return;
            }
            while (XMediaPlayer.access$3(this.this$0) == null);
            XMediaPlayer.access$3(this.this$0).onBufferingUpdate(this.mMediaPlayer, paramMessage.arg1);
            return;
          }
          while (XMediaPlayer.access$4(this.this$0) == null);
          XMediaPlayer.access$4(this.this$0).onSeekComplete(this.mMediaPlayer);
          return;
          Logger.log(XMediaplayerJNI.Tag, "Error (" + paramMessage.arg1 + "," + paramMessage.arg2 + ")");
          XMediaPlayer.access$5(this.this$0, 8);
          XMediaPlayer.OnErrorListener localOnErrorListener = XMediaPlayer.access$6(this.this$0);
          bool = false;
          if (localOnErrorListener == null)
            continue;
          bool = XMediaPlayer.access$6(this.this$0).onError(this.mMediaPlayer, paramMessage.arg1, paramMessage.arg2);
        }
        while ((XMediaPlayer.access$2(this.this$0) == null) || (bool));
        XMediaPlayer.access$2(this.this$0).onCompletion(this.mMediaPlayer);
        return;
      }
      while (XMediaPlayer.access$7(this.this$0) == null);
      XMediaPlayer.access$7(this.this$0).onInfo(this.mMediaPlayer, paramMessage.arg1, paramMessage.arg2);
      return;
    }
    while ((XMediaPlayer.access$8(this.this$0) == null) || (this.this$0.isSeeking()));
    XMediaPlayer.access$8(this.this$0).onPositionChange(this.mMediaPlayer, this.mMediaPlayer.getCurrentPosition());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaPlayer.EventHandler
 * JD-Core Version:    0.6.0
 */