package com.ushaqi.zhuishushenqi.reader;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.ushaqi.zhuishushenqi.util.I;

public class TtsSpeakingService extends Service
{
  private int a = 3;

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Notification localNotification = new android.support.v7.app.NotificationCompat.Builder(this).setSmallIcon(2130837893).setContentTitle("正在语音朗读《" + I.b + "》").setContentText("触摸可进入阅读").build();
    Intent localIntent = new Intent(this, ReaderActivity.class);
    localIntent.setFlags(603979776);
    localNotification.contentIntent = PendingIntent.getActivity(this, 0, localIntent, 0);
    localNotification.flags = (0x20 | localNotification.flags);
    startForeground(this.a, localNotification);
    return 2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.TtsSpeakingService
 * JD-Core Version:    0.6.0
 */