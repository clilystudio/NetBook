package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.model.live.program.Program;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule;
import com.ximalaya.ting.android.opensdk.model.track.Track;

public class XmStatisticsManager
{
  public static final String KEY_APP_ID = "appid";
  public static final String KEY_BUNDLE_ID = "bundleId";
  public static final String KEY_CLIENT = "client";
  public static final String KEY_DEVICE_ID = "deviceId";
  public static final String KEY_DURATION = "duration";
  public static final String KEY_PLAYED_SECS = "played_secs";
  public static final String KEY_PLAY_SOURCE = "play_source";
  public static final String KEY_PLAY_TYPE = "play_type";
  public static final String KEY_PROGRAM_ID = "programId";
  public static final String KEY_RADIO_ID = "radioId";
  public static final String KEY_REC_SRC = "rec_src";
  public static final String KEY_REC_TRACK = "rec_track";
  public static final String KEY_SCHEDULE_ID = "programScheduleId";
  public static final String KEY_STARTED_AT = "started_at";
  public static final String KEY_TRACK_ID = "trackId";
  public static final String KEY_VERSION = "version";
  private static final int MAX_RETRY_COUNT = 3;
  private static final String TAG = "XmStatisticsManager";
  private static XmStatisticsManager sInstance;
  private static byte[] sLock = new byte[0];
  private XmBaseRecord mRecord;
  private HandlerThread mWorker;
  private Handler mWorkerHandler;

  private XmStatisticsManager()
  {
    init();
  }

  public static XmStatisticsManager getInstance()
  {
    if (sInstance == null);
    synchronized (sLock)
    {
      if (sInstance == null)
        sInstance = new XmStatisticsManager();
      return sInstance;
    }
  }

  private void init()
  {
    this.mWorker = new HandlerThread("statistics-manager");
    this.mWorker.start();
    this.mWorkerHandler = new Handler(this.mWorker.getLooper());
  }

  public void onPauseTrack(Track paramTrack, int paramInt)
  {
    if (paramTrack == null)
      Log.e("XmStatisticsManager", "onPauseTrack failed due to null track");
    int i;
    do
    {
      do
      {
        return;
        if (this.mRecord != null)
          continue;
        Log.e("XmStatisticsManager", "onPauseTrack failed due to track has not been started!");
        return;
      }
      while (!(this.mRecord instanceof XmTrackRecord));
      Log.e("XmStatisticsManager", "onPauseTrack id:" + paramTrack.getDataId() + ", title:" + paramTrack.getTrackTitle() + ", pos:" + paramInt);
      long l = System.currentTimeMillis();
      i = (int)(l - this.mRecord.getLastEventTime());
      this.mRecord.setLastEventTime(l);
      this.mRecord.setLastPostion(paramInt);
      this.mRecord.setPlayedSecs(paramInt);
    }
    while (!this.mRecord.isCounting());
    this.mRecord.addDuration(i);
    this.mRecord.setCounting(false);
  }

  public void onPlayTrack(Track paramTrack, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramTrack == null)
      Log.e("XmStatisticsManager", "onPlayTrack failed due to null track");
    do
    {
      return;
      Log.e("XmStatisticsManager", "onPlayTrack id:" + paramTrack.getDataId() + ", title:" + paramTrack.getTrackTitle() + ",online:" + paramBoolean + ",pos:" + paramInt1 + ",dur:" + paramInt2);
      long l = System.currentTimeMillis();
      if (this.mRecord == null)
      {
        XmTrackRecord localXmTrackRecord1 = new XmTrackRecord();
        localXmTrackRecord1.setCounting(true);
        localXmTrackRecord1.setLastEventTime(l);
        localXmTrackRecord1.setStartedAt(l);
        localXmTrackRecord1.setId(paramTrack.getDataId());
        if (paramBoolean);
        for (int i = 0; ; i = 1)
        {
          localXmTrackRecord1.setPlayType(i);
          localXmTrackRecord1.setLastPostion(paramInt1);
          localXmTrackRecord1.setDuration(0);
          localXmTrackRecord1.setPlayedSecs(paramInt1);
          this.mRecord = localXmTrackRecord1;
          return;
        }
      }
      if (!(this.mRecord instanceof XmTrackRecord))
        continue;
      XmTrackRecord localXmTrackRecord2 = (XmTrackRecord)this.mRecord;
      if (localXmTrackRecord2.getId() != paramTrack.getDataId())
      {
        onStopTrack(paramTrack, paramInt1);
        return;
      }
      localXmTrackRecord2.setCounting(true);
      localXmTrackRecord2.setLastEventTime(l);
      return;
    }
    while (!(this.mRecord instanceof XmRadioRecord));
    onRadioStop(null, null);
  }

  public void onRadioPause(Radio paramRadio, Schedule paramSchedule)
  {
    if ((this.mRecord == null) || (!(this.mRecord instanceof XmRadioRecord)))
      return;
    XmRadioRecord localXmRadioRecord = (XmRadioRecord)this.mRecord;
    long l = System.currentTimeMillis();
    if (localXmRadioRecord.isCounting())
    {
      localXmRadioRecord.addDuration((int)(l - localXmRadioRecord.getLastEventTime()));
      localXmRadioRecord.setCounting(false);
    }
    localXmRadioRecord.setLastEventTime(l);
  }

  public void onRadioStart(Radio paramRadio, Schedule paramSchedule)
  {
    long l = System.currentTimeMillis();
    if ((this.mRecord != null) && ((this.mRecord instanceof XmTrackRecord)))
    {
      XmTrackRecord localXmTrackRecord = (XmTrackRecord)this.mRecord;
      int i = (int)(l - this.mRecord.getLastEventTime());
      this.mRecord.setLastEventTime(l);
      if (this.mRecord.isCounting())
      {
        this.mRecord.addDuration(i);
        this.mRecord.setCounting(false);
      }
      XmStatisticsManager.Task localTask = new XmStatisticsManager.Task(this, localXmTrackRecord);
      this.mWorkerHandler.post(localTask);
      this.mRecord = null;
    }
    do
    {
      return;
      if ((this.mRecord != null) && ((this.mRecord instanceof XmRadioRecord)))
      {
        XmRadioRecord localXmRadioRecord3 = (XmRadioRecord)this.mRecord;
        if (localXmRadioRecord3.isCounting())
          localXmRadioRecord3.addDuration((int)(l - localXmRadioRecord3.getLastEventTime()));
        while (true)
        {
          localXmRadioRecord3.setLastEventTime(l);
          return;
          localXmRadioRecord3.setCounting(true);
        }
      }
      if (paramRadio == null)
        continue;
      XmRadioRecord localXmRadioRecord1 = new XmRadioRecord();
      localXmRadioRecord1.setId(paramRadio.getDataId());
      localXmRadioRecord1.setStartedAt(l);
      localXmRadioRecord1.setLastEventTime(l);
      localXmRadioRecord1.setDuration(0);
      localXmRadioRecord1.setCounting(true);
      this.mRecord = localXmRadioRecord1;
      return;
    }
    while (paramSchedule == null);
    XmRadioRecord localXmRadioRecord2 = new XmRadioRecord();
    localXmRadioRecord2.setScheduleId(paramSchedule.getDataId());
    localXmRadioRecord2.setProgramId(paramSchedule.getRelatedProgram().getProgramId());
    localXmRadioRecord2.setStartedAt(l);
    localXmRadioRecord2.setLastEventTime(l);
    localXmRadioRecord2.setDuration(0);
    localXmRadioRecord2.setCounting(true);
    this.mRecord = localXmRadioRecord2;
  }

  public void onRadioStop(Radio paramRadio, Schedule paramSchedule)
  {
    if ((this.mRecord == null) || (!(this.mRecord instanceof XmRadioRecord)))
      return;
    long l = System.currentTimeMillis();
    XmRadioRecord localXmRadioRecord = (XmRadioRecord)this.mRecord;
    if (localXmRadioRecord.isCounting())
    {
      localXmRadioRecord.addDuration((int)(l - localXmRadioRecord.getLastEventTime()));
      localXmRadioRecord.setCounting(false);
    }
    XmStatisticsManager.Task localTask = new XmStatisticsManager.Task(this, this.mRecord);
    this.mWorkerHandler.post(localTask);
    this.mRecord = null;
  }

  public void onRadioSwitch(Radio paramRadio1, Radio paramRadio2)
  {
    onRadioStop(paramRadio2, null);
  }

  public void onStopTrack(Track paramTrack, int paramInt)
  {
    if ((paramTrack == null) || (this.mRecord == null));
    do
      return;
    while (!(this.mRecord instanceof XmTrackRecord));
    Log.e("XmStatisticsManager", "onStopTrack id:" + paramTrack.getDataId() + ", title:" + paramTrack.getTrackTitle() + ", pos:" + paramInt);
    onPauseTrack(paramTrack, paramInt);
    XmStatisticsManager.Task localTask = new XmStatisticsManager.Task(this, (XmTrackRecord)this.mRecord);
    this.mWorkerHandler.post(localTask);
    this.mRecord = null;
  }

  public void onSwitchTrack(Track paramTrack1, Track paramTrack2, int paramInt)
  {
    if (paramTrack2 != null)
      onStopTrack(paramTrack2, paramInt);
  }

  public void onTrackBuffering(Track paramTrack, boolean paramBoolean, int paramInt)
  {
    if (paramTrack == null);
    do
    {
      return;
      Log.e("XmStatisticsManager", "onTrackBuffering id:" + paramTrack.getDataId() + ", title:" + paramTrack.getTrackTitle() + ", buff:" + paramBoolean + ", pos:" + paramInt);
    }
    while ((this.mRecord == null) || (!(this.mRecord instanceof XmTrackRecord)));
    if (paramBoolean)
    {
      onPauseTrack(paramTrack, paramInt);
      return;
    }
    XmTrackRecord localXmTrackRecord = (XmTrackRecord)this.mRecord;
    if (localXmTrackRecord.getPlayType() == 0);
    for (boolean bool = true; ; bool = false)
    {
      onPlayTrack(paramTrack, bool, paramInt, localXmTrackRecord.getDuration());
      return;
    }
  }

  public void release()
  {
    synchronized (sLock)
    {
      this.mWorkerHandler.removeCallbacksAndMessages(null);
      this.mWorker.quit();
      sInstance = null;
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmStatisticsManager
 * JD-Core Version:    0.6.0
 */