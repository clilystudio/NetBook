package com.ximalaya.ting.android.opensdk.player;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayer;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayer.Stub;

class XmPlayerManager$1
  implements ServiceConnection
{
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Log.e("XmPlayerServiceManager", "onServiceConnected");
      XmPlayerManager.access$0(this.this$0, true);
      XmPlayerManager.access$5(this.this$0, IXmPlayer.Stub.asInterface(paramIBinder));
      XmPlayerManager.access$1(this.this$0).registePlayerListener(XmPlayerManager.access$2(this.this$0));
      XmPlayerManager.access$1(this.this$0).registeAdsListener(XmPlayerManager.access$3(this.this$0));
      XmPlayerManager.access$1(this.this$0).setDownloadPlayPathCallback(XmPlayerManager.access$6(this.this$0));
      XmPlayerManager.access$1(this.this$0).setAppSecret(CommonRequest.getInstanse().getAppsecret());
      XmPlayerManager.access$1(this.this$0).setNotification(XmPlayerManager.access$7(this.this$0), XmPlayerManager.access$8(this.this$0));
      if (XmPlayerManager.access$9(this.this$0) != null)
        XmPlayerManager.access$9(this.this$0).onConnected();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    try
    {
      Log.e("XmPlayerServiceManager", "onServiceDisconnected");
      XmPlayerManager.access$0(this.this$0, false);
      if (XmPlayerManager.access$1(this.this$0) != null)
      {
        XmPlayerManager.access$1(this.this$0).unregistePlayerListener(XmPlayerManager.access$2(this.this$0));
        XmPlayerManager.access$1(this.this$0).unregisteAdsListener(XmPlayerManager.access$3(this.this$0));
        XmPlayerManager.access$1(this.this$0).setDownloadPlayPathCallback(null);
        if (XmPlayerManager.access$4(this.this$0) > 0)
          XmPlayerManager.access$1(this.this$0).setPageSize(XmPlayerManager.access$4(this.this$0));
      }
      XmPlayerManager.access$5(this.this$0, null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager.1
 * JD-Core Version:    0.6.0
 */