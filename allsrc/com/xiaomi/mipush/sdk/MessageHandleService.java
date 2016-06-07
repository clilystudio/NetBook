package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;

public class MessageHandleService extends IntentService
{
  private static ConcurrentLinkedQueue<c> a = new ConcurrentLinkedQueue();

  public MessageHandleService()
  {
    super("MessageHandleThread");
  }

  public static void a(c paramc)
  {
    a.add(paramc);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    c localc;
    if (paramIntent != null)
    {
      Log.i("lh", "jobIntent is not null");
      localc = (c)a.poll();
      if (localc != null)
        break label35;
      Log.i("lh", "empty job from jobQueue");
    }
    label35: PushMessageReceiver localPushMessageReceiver;
    PushMessageHandler.a locala;
    do
    {
      Intent localIntent;
      do
      {
        return;
        localPushMessageReceiver = localc.a();
        localIntent = localc.b();
        switch (localIntent.getIntExtra("message_type", 1))
        {
        case 4:
        default:
          return;
        case 1:
          locala = l.a(this).a(localIntent);
        case 2:
        case 3:
        }
      }
      while (locala == null);
      if (!(locala instanceof MiPushMessage))
        continue;
      localPushMessageReceiver.a(this, (MiPushMessage)locala);
      return;
      localPushMessageReceiver.a(this, (MiPushMessage)localIntent.getSerializableExtra("key_message"));
      return;
      localPushMessageReceiver.a((MiPushCommandMessage)localIntent.getSerializableExtra("key_command"));
      return;
    }
    while (!(locala instanceof MiPushCommandMessage));
    localPushMessageReceiver.a((MiPushCommandMessage)locala);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.MessageHandleService
 * JD-Core Version:    0.6.0
 */