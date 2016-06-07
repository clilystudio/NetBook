package android.support.v4.content;

import android.content.Intent;
import java.util.ArrayList;

class LocalBroadcastManager$BroadcastRecord
{
  final Intent intent;
  final ArrayList<LocalBroadcastManager.ReceiverRecord> receivers;

  LocalBroadcastManager$BroadcastRecord(Intent paramIntent, ArrayList<LocalBroadcastManager.ReceiverRecord> paramArrayList)
  {
    this.intent = paramIntent;
    this.receivers = paramArrayList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager.BroadcastRecord
 * JD-Core Version:    0.6.0
 */