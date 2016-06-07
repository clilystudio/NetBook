package com.ximalaya.ting.android.opensdk.player;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.ximalaya.ting.android.opensdk.httputil.BaseBuilder;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.album.Announcer;
import com.ximalaya.ting.android.opensdk.model.live.program.Program;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.live.schedule.LiveAnnouncer;
import com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;

public class XmNotificationCreater
{
  public static final String ACTION_CONTROL_PLAY_NEXT = "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_NEXT";
  public static final String ACTION_CONTROL_PLAY_PRE = "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_PRE";
  public static final String ACTION_CONTROL_START_PAUSE = "com.ximalaya.ting.android.byd.ACTION_CONTROL_START_PAUSE";
  public static final String IMG_NOTIFYICON = "img_notifyIcon";
  public static final String IMG_NOTIFYICON_DRAWABLE = "ting";
  public static final String IMG_NOTIFYNEXT = "img_notifyNext";
  public static final String IMG_NOTIFYNEXT_DRAWABLE_DISABLE = "icon_next_disable";
  public static final String IMG_NOTIFYNEXT_DRAWABLE_NORMAL = "icon_next_normal";
  public static final String IMG_NOTIFYPLAYORPAUSE = "img_notifyPlayOrPause";
  public static final String IMG_NOTIFYPLAYORPAUSE_DRAWABLE_PAUSE = "icon_statusbar_pause";
  public static final String IMG_NOTIFYPLAYORPAUSE_DRAWABLE_PLAY = "icon_statusbar_play";
  public static final String IMG_NOTIFYPRE = "img_notifyPre";
  public static final String IMG_NOTIFYPRE_DRAWABLE_DISABLE = "icon_previous_disable";
  public static final String IMG_NOTIFYPRE_DRAWABLE_NORMAL = "icon_previous_normal";
  public static final String REMOTEVIEW_LAYOUT = "view_notify_play";
  public static final String TXT_NOTIFYMUSICNAME = "txt_notifyMusicName";
  public static final String TXT_NOTIFYNICKNAME = "txt_notifyNickName";
  private static XmNotificationCreater instanse;
  private Context mContext;
  private RemoteViews mRemoteView;
  private PendingIntent nextIntent;
  private PendingIntent preIntent;
  private RemoteViews remoteView;
  private Resources res;
  private PendingIntent startOrPauseIntent;
  private int version = Build.VERSION.SDK_INT;

  private XmNotificationCreater(Context paramContext)
  {
    this.mContext = paramContext;
    this.res = paramContext.getResources();
  }

  public static XmNotificationCreater getInstanse(Context paramContext)
  {
    if (instanse == null)
      monitorenter;
    try
    {
      if (instanse == null)
        instanse = new XmNotificationCreater(paramContext.getApplicationContext());
      return instanse;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public <T> NotificationCompat.Builder createNotificationBuilder(Context paramContext, Class<T> paramClass)
  {
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
    this.mRemoteView = new RemoteViews(paramContext.getPackageName(), getResourceId("view_notify_play", "layout"));
    if (this.startOrPauseIntent != null)
      this.mRemoteView.setOnClickPendingIntent(getResourceId("img_notifyPlayOrPause", "id"), this.startOrPauseIntent);
    if (this.nextIntent != null)
      this.mRemoteView.setOnClickPendingIntent(getResourceId("img_notifyNext", "id"), this.nextIntent);
    if (this.preIntent != null)
      this.mRemoteView.setOnClickPendingIntent(getResourceId("img_notifyPre", "id"), this.preIntent);
    PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, paramClass), 0);
    localBuilder.setContent(this.mRemoteView).setSmallIcon(getResourceId("ting", "drawable")).setContentIntent(localPendingIntent);
    return localBuilder;
  }

  public int getResourceId(String paramString1, String paramString2)
  {
    return this.res.getIdentifier(paramString1, paramString2, this.mContext.getPackageName());
  }

  public void setNextPendingIntent(PendingIntent paramPendingIntent)
  {
    if (paramPendingIntent == null)
    {
      Intent localIntent = new Intent("com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_NEXT");
      this.nextIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 0);
      return;
    }
    this.nextIntent = paramPendingIntent;
  }

  public void setPrePendingIntent(PendingIntent paramPendingIntent)
  {
    if (paramPendingIntent == null)
    {
      Intent localIntent = new Intent("com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_PRE");
      this.preIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 0);
      return;
    }
    this.preIntent = paramPendingIntent;
  }

  public void setStartOrPausePendingIntent(PendingIntent paramPendingIntent)
  {
    if (paramPendingIntent == null)
    {
      Intent localIntent = new Intent("com.ximalaya.ting.android.byd.ACTION_CONTROL_START_PAUSE");
      this.startOrPauseIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 0);
      return;
    }
    this.startOrPauseIntent = paramPendingIntent;
  }

  public void updateModelDetail(PlayableModel paramPlayableModel, NotificationManager paramNotificationManager, Notification paramNotification, int paramInt)
  {
    if (paramNotification != null)
      this.remoteView = paramNotification.contentView;
    Track localTrack;
    String str5;
    String str1;
    Object localObject2;
    Object localObject1;
    if ((paramPlayableModel != null) && (this.remoteView != null) && (paramNotificationManager != null))
    {
      if (!(paramPlayableModel instanceof Track))
        break label191;
      localTrack = (Track)paramPlayableModel;
      String str4 = localTrack.getTrackTitle();
      if (localTrack.getAnnouncer() != null)
        break label178;
      str5 = "";
      String str6 = localTrack.getCoverUrlSmall();
      str1 = str4;
      localObject2 = str5;
      localObject1 = str6;
    }
    while (true)
    {
      label178: label191: label253: String str2;
      while (true)
      {
        this.remoteView.setTextViewText(getResourceId("txt_notifyMusicName", "id"), str1);
        this.remoteView.setTextViewText(getResourceId("txt_notifyNickName", "id"), (CharSequence)localObject2);
        this.remoteView.setImageViewResource(getResourceId("img_notifyPlayOrPause", "id"), getResourceId("icon_statusbar_play", "drawable"));
        paramNotificationManager.notify(paramInt, paramNotification);
        if (!TextUtils.isEmpty((CharSequence)localObject1));
        try
        {
          C localC = BaseBuilder.urlGet((String)localObject1).a();
          BaseCall.doAsync(localC, new XmNotificationCreater.1(this, paramNotificationManager, paramInt, paramNotification));
          return;
          str5 = localTrack.getAnnouncer().getNickname();
          break;
          if ((paramPlayableModel instanceof Radio))
          {
            Radio localRadio = (Radio)paramPlayableModel;
            str1 = localRadio.getRadioName();
            localObject2 = localRadio.getRadioDesc();
            localObject1 = localRadio.getCoverUrlSmall();
            continue;
          }
          if (!(paramPlayableModel instanceof Schedule))
            break label372;
          Schedule localSchedule = (Schedule)paramPlayableModel;
          if (localSchedule.getRelatedProgram() == null)
          {
            str1 = "";
            if ((localSchedule.getRelatedProgram() == null) || (localSchedule.getRelatedProgram().getAnnouncerList() == null) || (localSchedule.getRelatedProgram().getAnnouncerList().size() <= 0))
              break label352;
          }
          label352: for (str2 = ((LiveAnnouncer)localSchedule.getRelatedProgram().getAnnouncerList().get(0)).getNickName(); ; str2 = "")
          {
            if (localSchedule.getRelatedProgram() == null)
              break label362;
            String str3 = localSchedule.getRelatedProgram().getBackPicUrl();
            localObject2 = str2;
            localObject1 = str3;
            break;
            str1 = localSchedule.getRelatedProgram().getProgramName();
            break label253;
          }
        }
        catch (XimalayaException localXimalayaException)
        {
          return;
        }
      }
      label362: localObject2 = str2;
      localObject1 = null;
      continue;
      label372: localObject1 = null;
      str1 = null;
      localObject2 = null;
    }
  }

  public void updateViewStateAtPause(NotificationManager paramNotificationManager, Notification paramNotification, int paramInt)
  {
    if (paramNotification != null)
      this.remoteView = paramNotification.contentView;
    if ((this.remoteView != null) && (paramNotificationManager != null))
    {
      this.remoteView.setImageViewResource(getResourceId("img_notifyPlayOrPause", "id"), getResourceId("icon_statusbar_pause", "drawable"));
      paramNotificationManager.notify(paramInt, paramNotification);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmNotificationCreater
 * JD-Core Version:    0.6.0
 */