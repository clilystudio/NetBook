package com.ximalaya.ting.android.opensdk.player.service;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.XmNotificationCreater;
import com.ximalaya.ting.android.opensdk.util.Logger;

class XmPlayerService$1
  implements IXmPlayerStatusListener
{
  private byte[] mLock = new byte[0];

  public void onBufferProgress(int paramInt)
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          return;
        }
        IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmPlayerEventDispatcher.onBufferProgress(paramInt);
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onBufferingStart()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          if (XmPlayerService.access$3(this.this$0).getPlaySource() == 2)
          {
            Track localTrack = (Track)XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
            int k = XmPlayerService.access$0(this.this$0).getCurrentPos();
            XmPlayerService.access$6(this.this$0).onTrackBuffering(localTrack, true, k);
          }
          return;
        }
        IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmPlayerEventDispatcher.onBufferingStart();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onBufferingStop()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          if (XmPlayerService.access$3(this.this$0).getPlaySource() == 2)
          {
            Track localTrack = (Track)XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
            int k = XmPlayerService.access$0(this.this$0).getCurrentPos();
            XmPlayerService.access$6(this.this$0).onTrackBuffering(localTrack, false, k);
          }
          return;
        }
        IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmPlayerEventDispatcher.onBufferingStop();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public boolean onError(XmPlayerException paramXmPlayerException)
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          return false;
        }
        IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmPlayerEventDispatcher.onError(paramXmPlayerException);
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onPlayPause()
  {
    int k;
    do
      synchronized (this.mLock)
      {
        int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
        int j = 0;
        while (true)
          if (j >= i)
          {
            XmPlayerService.access$2(this.this$0).finishBroadcast();
            XmNotificationCreater.getInstanse(XmPlayerService.access$7(this.this$0)).updateViewStateAtPause(XmPlayerService.access$8(this.this$0), XmPlayerService.access$9(this.this$0), XmPlayerService.access$10(this.this$0));
            k = XmPlayerService.access$3(this.this$0).getPlaySource();
            if (k == 2)
            {
              Track localTrack = (Track)XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
              int m = XmPlayerService.access$0(this.this$0).getCurrentPos();
              XmPlayerService.access$6(this.this$0).onPauseTrack(localTrack, m);
              return;
            }
          }
          else
          {
            IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
            try
            {
              localIXmPlayerEventDispatcher.onPlayPause();
              j++;
            }
            catch (RemoteException localRemoteException)
            {
              while (true)
                localRemoteException.printStackTrace();
            }
          }
      }
    while (k != 3);
    XmPlayerService.access$6(this.this$0).onRadioPause(XmPlayerService.access$3(this.this$0).getRadio(), null);
  }

  public void onPlayProgress(int paramInt1, int paramInt2)
  {
    while (true)
    {
      int j;
      synchronized (this.mLock)
      {
        PlayableModel localPlayableModel = XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
        if ((localPlayableModel == null) || (!(localPlayableModel instanceof Track)))
          continue;
        Track localTrack = (Track)localPlayableModel;
        if ((paramInt1 <= 5000) || (paramInt1 >= paramInt2 - 5000))
          break label180;
        XmPlayerService.access$5(this.this$0, localPlayableModel.getDataId(), paramInt1);
        localTrack.setLastPlayedMills(paramInt1);
        int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
        j = 0;
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          return;
          XmPlayerService.access$5(this.this$0, localPlayableModel.getDataId(), 0);
          localTrack.setLastPlayedMills(0);
        }
      }
      IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
      try
      {
        localIXmPlayerEventDispatcher.onPlayProgress(paramInt1, paramInt2);
        j++;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          localRemoteException.printStackTrace();
      }
      label180: if (paramInt1 >= paramInt2 - 5000)
        continue;
      if (paramInt1 > 5000)
        continue;
    }
  }

  public void onPlayStart()
  {
    int k;
    do
      synchronized (this.mLock)
      {
        int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
        int j = 0;
        while (true)
          if (j >= i)
          {
            XmPlayerService.access$2(this.this$0).finishBroadcast();
            PlayableModel localPlayableModel = XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
            XmNotificationCreater.getInstanse(XmPlayerService.access$7(this.this$0)).updateModelDetail(localPlayableModel, XmPlayerService.access$8(this.this$0), XmPlayerService.access$9(this.this$0), XmPlayerService.access$10(this.this$0));
            k = XmPlayerService.access$3(this.this$0).getPlaySource();
            if (k == 2)
            {
              Track localTrack = (Track)XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
              int m = XmPlayerService.access$0(this.this$0).getCurrentPos();
              int n = XmPlayerService.access$0(this.this$0).getDuration();
              boolean bool = XmPlayerService.access$0(this.this$0).isOnlineSource();
              XmPlayerService.access$6(this.this$0).onPlayTrack(localTrack, bool, m, n);
              return;
            }
          }
          else
          {
            IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
            try
            {
              localIXmPlayerEventDispatcher.onPlayStart();
              j++;
            }
            catch (RemoteException localRemoteException)
            {
              while (true)
                localRemoteException.printStackTrace();
            }
          }
      }
    while (k != 3);
    Radio localRadio = XmPlayerService.access$3(this.this$0).getRadio();
    XmPlayerService.access$6(this.this$0).onRadioStart(localRadio, null);
  }

  public void onPlayStop()
  {
    int k;
    do
      synchronized (this.mLock)
      {
        int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
        int j = 0;
        while (true)
          if (j >= i)
          {
            XmPlayerService.access$2(this.this$0).finishBroadcast();
            k = XmPlayerService.access$3(this.this$0).getPlaySource();
            if (k == 2)
            {
              PlayableModel localPlayableModel = XmPlayerService.access$3(this.this$0).getCurrentPlayableModel();
              if ((localPlayableModel != null) && ((localPlayableModel instanceof Track)))
              {
                Track localTrack = (Track)localPlayableModel;
                int m = XmPlayerService.access$0(this.this$0).getCurrentPos();
                XmPlayerService.access$6(this.this$0).onStopTrack(localTrack, m);
              }
              return;
            }
          }
          else
          {
            IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
            try
            {
              localIXmPlayerEventDispatcher.onPlayStop();
              j++;
            }
            catch (RemoteException localRemoteException)
            {
              while (true)
                localRemoteException.printStackTrace();
            }
          }
      }
    while (k != 3);
    XmPlayerService.access$6(this.this$0).onRadioStop(XmPlayerService.access$3(this.this$0).getRadio(), null);
  }

  public void onSoundPlayComplete()
  {
    while (true)
    {
      synchronized (this.mLock)
      {
        int i = XmPlayerService.access$3(this.this$0).getNextIndex();
        int j = XmPlayerService.access$2(this.this$0).beginBroadcast();
        int k = 0;
        if (k < j)
          continue;
        XmPlayerService.access$2(this.this$0).finishBroadcast();
        if (i >= 0)
        {
          XmPlayerService.access$11(this.this$0, i, true);
          return;
          IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(k);
          try
          {
            localIXmPlayerEventDispatcher.onSoundPlayComplete();
            k++;
          }
          catch (RemoteException localRemoteException)
          {
            localRemoteException.printStackTrace();
            continue;
          }
        }
      }
      if (!XmPlayListControl.PlayMode.PLAY_MODEL_SINGLE.equals(XmPlayerService.access$3(this.this$0).getPlayMode()))
        continue;
      XmPlayerService.access$3(this.this$0).setPlayMode(XmPlayListControl.PlayMode.PLAY_MODEL_LIST);
    }
  }

  public void onSoundPrepared()
  {
    XmPlayerService.access$1(this.this$0, XmPlayerService.access$0(this.this$0).getDuration());
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          return;
        }
        IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmPlayerEventDispatcher.onSoundPrepared();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    label336: 
    do
    {
      while (true)
      {
        synchronized (this.mLock)
        {
          int i = XmPlayerService.access$2(this.this$0).beginBroadcast();
          int j = 0;
          if (j < i)
            continue;
          XmPlayerService.access$2(this.this$0).finishBroadcast();
          k = XmPlayerService.access$3(this.this$0).getPlaySource();
          PlayableModel localPlayableModel1 = XmPlayerService.access$3(this.this$0).getPlayableModel(paramInt2);
          PlayableModel localPlayableModel2 = XmPlayerService.access$3(this.this$0).getPlayableModel(paramInt1);
          StringBuilder localStringBuilder = new StringBuilder("onSoundSwitch ").append(paramInt1).append("|").append(paramInt2).append("|");
          if (localPlayableModel1 != null)
          {
            bool = true;
            Logger.e("XmPlayerService", bool + "|" + (localPlayableModel1 instanceof Track) + "|" + paramInt3 + "|" + XmPlayerService.access$4(this.this$0));
            if ((localPlayableModel1 == null) || (!(localPlayableModel1 instanceof Track)))
              continue;
            if ((paramInt3 <= -5000 + XmPlayerService.access$4(this.this$0)) && (paramInt3 >= 5000))
              continue;
            paramInt3 = 0;
            XmPlayerService.access$5(this.this$0, localPlayableModel1.getDataId(), paramInt3);
            if (k != 2)
              break label336;
            if ((!(localPlayableModel1 instanceof Track)) || (!(localPlayableModel2 instanceof Track)))
              break;
            Track localTrack = (Track)localPlayableModel1;
            XmPlayerService.access$6(this.this$0).onSwitchTrack((Track)localPlayableModel2, localTrack, paramInt3);
            return;
            IXmPlayerEventDispatcher localIXmPlayerEventDispatcher = (IXmPlayerEventDispatcher)XmPlayerService.access$2(this.this$0).getBroadcastItem(j);
            try
            {
              localIXmPlayerEventDispatcher.onSoundSwitch(paramInt1, paramInt2, paramInt3);
              j++;
            }
            catch (RemoteException localRemoteException)
            {
              localRemoteException.printStackTrace();
              continue;
            }
          }
        }
        boolean bool = false;
      }
      Log.e("XmPlayerService", "Class Cast Exception: Cannot Cast To Track!");
      return;
    }
    while (k != 3);
    XmPlayerService.access$6(this.this$0).onRadioSwitch(XmPlayerService.access$3(this.this$0).getRadio(), XmPlayerService.access$3(this.this$0).getLastRadio());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerService.1
 * JD-Core Version:    0.6.0
 */