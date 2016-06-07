package com.ximalaya.ting.android.opensdk.util;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.ximalaya.ting.android.opensdk.model.album.Announcer;
import com.ximalaya.ting.android.opensdk.model.live.program.Program;
import com.ximalaya.ting.android.opensdk.model.live.schedule.LiveAnnouncer;
import com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ModelUtil
{
  public static LiveAnnouncer announcerToLiveAnnouncer(Announcer paramAnnouncer)
  {
    if (paramAnnouncer == null)
      return null;
    LiveAnnouncer localLiveAnnouncer = new LiveAnnouncer();
    localLiveAnnouncer.setLiveAnnouncerId(paramAnnouncer.getAnnouncerId());
    localLiveAnnouncer.setNickName(paramAnnouncer.getNickname());
    localLiveAnnouncer.setAvatarUrl(paramAnnouncer.getAvatarUrl());
    return localLiveAnnouncer;
  }

  public static Announcer liveAnnouncerToAnnouncer(LiveAnnouncer paramLiveAnnouncer)
  {
    if (paramLiveAnnouncer == null)
      return null;
    Announcer localAnnouncer = new Announcer();
    localAnnouncer.setAnnouncerId(paramLiveAnnouncer.getLiveAnnouncerId());
    localAnnouncer.setNickname(paramLiveAnnouncer.getNickName());
    localAnnouncer.setAvatarUrl(paramLiveAnnouncer.getAvatarUrl());
    return localAnnouncer;
  }

  public static Track scheduleToTrack(Schedule paramSchedule)
  {
    if (paramSchedule == null)
      return null;
    Track localTrack = new Track();
    localTrack.setDataId(paramSchedule.getDataId());
    localTrack.setKind("schedule");
    Program localProgram = paramSchedule.getRelatedProgram();
    localTrack.setTrackTitle(localProgram.getProgramName());
    localTrack.setCoverUrlLarge(localProgram.getBackPicUrl());
    localTrack.setCoverUrlMiddle(localProgram.getBackPicUrl());
    localTrack.setCoverUrlSmall(localProgram.getBackPicUrl());
    localTrack.setPlayUrl32(paramSchedule.getListenBackUrl());
    localTrack.setPlayUrl64(paramSchedule.getListenBackUrl());
    if ((localProgram.getAnnouncerList() != null) && (localProgram.getAnnouncerList().size() > 0))
      localTrack.setAnnouncer(liveAnnouncerToAnnouncer((LiveAnnouncer)localProgram.getAnnouncerList().get(0)));
    localTrack.setUpdatedAt(paramSchedule.getUpdateAt());
    localTrack.setExtra(Long.valueOf(localProgram.getProgramId()));
    return localTrack;
  }

  public static Program toProgram(Schedule paramSchedule)
  {
    if (paramSchedule == null)
      return null;
    return paramSchedule.getRelatedProgram();
  }

  public static List<Program> toProgramList(List<Schedule> paramList)
  {
    if (paramList == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      localArrayList.add(toProgram((Schedule)localIterator.next()));
    }
  }

  @SuppressLint({"SimpleDateFormat"})
  public static List<Track> toTrackList(List<Schedule> paramList)
  {
    if (paramList == null)
      return null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm");
    String str = localSimpleDateFormat.format(new Date(System.currentTimeMillis()));
    while (true)
    {
      long l1;
      ArrayList localArrayList;
      Schedule localSchedule;
      try
      {
        long l4 = localSimpleDateFormat.parse(str).getTime();
        l1 = l4;
        localArrayList = new ArrayList();
        localIterator = paramList.iterator();
        if (!localIterator.hasNext())
          return localArrayList;
      }
      catch (ParseException localParseException1)
      {
        Iterator localIterator;
        localParseException1.printStackTrace();
        l1 = 0L;
        continue;
        localSchedule = (Schedule)localIterator.next();
      }
      try
      {
        long l3 = localSimpleDateFormat.parse(localSchedule.getEndTime()).getTime();
        l2 = l3;
        if (l1 <= l2)
          continue;
        localArrayList.add(scheduleToTrack(localSchedule));
      }
      catch (ParseException localParseException2)
      {
        while (true)
        {
          localParseException2.printStackTrace();
          long l2 = 0L;
        }
      }
    }
  }

  public static Schedule trackToSchedule(Track paramTrack)
  {
    if (paramTrack == null)
      return null;
    Schedule localSchedule = new Schedule();
    localSchedule.setDataId(paramTrack.getDataId());
    localSchedule.setKind("schedule");
    Program localProgram = new Program();
    localProgram.setProgramId(((Long)paramTrack.getExtra()).longValue());
    localProgram.setProgramName(paramTrack.getTrackTitle());
    String str1;
    if (TextUtils.isEmpty(paramTrack.getCoverUrlSmall()))
    {
      str1 = paramTrack.getCoverUrlLarge();
      localProgram.setBackPicUrl(str1);
      LiveAnnouncer localLiveAnnouncer = announcerToLiveAnnouncer(paramTrack.getAnnouncer());
      if (localLiveAnnouncer != null)
        localProgram.setAnnouncerList(new ArrayList(Arrays.asList(new LiveAnnouncer[] { localLiveAnnouncer })));
      localSchedule.setRelatedProgram(localProgram);
      if (!TextUtils.isEmpty(paramTrack.getPlayUrl64()))
        break label160;
    }
    label160: for (String str2 = paramTrack.getPlayUrl32(); ; str2 = paramTrack.getPlayUrl64())
    {
      localSchedule.setListenBackUrl(str2);
      localSchedule.setUpdateAt(paramTrack.getUpdatedAt());
      return localSchedule;
      str1 = paramTrack.getCoverUrlSmall();
      break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.ModelUtil
 * JD-Core Version:    0.6.0
 */