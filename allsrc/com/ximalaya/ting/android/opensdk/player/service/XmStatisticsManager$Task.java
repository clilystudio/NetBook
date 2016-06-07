package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.squareup.okhttp.D;
import com.squareup.okhttp.I;
import com.squareup.okhttp.K;
import com.ximalaya.ting.android.opensdk.httputil.BaseBuilder;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class XmStatisticsManager$Task
  implements Runnable
{
  private XmBaseRecord mListenRecord;
  private String mRadioUrl = "openapi/live/record";
  private int mRetry = 0;
  private String mTrackUrl = "openapi/tracks/record";

  public XmStatisticsManager$Task(XmStatisticsManager paramXmStatisticsManager, XmBaseRecord paramXmBaseRecord)
  {
    this.mListenRecord = paramXmBaseRecord;
  }

  public void run()
  {
    if (this.mListenRecord == null)
      return;
    this.mRetry = (1 + this.mRetry);
    HashMap localHashMap = new HashMap();
    Object localObject;
    if ((this.mListenRecord instanceof XmTrackRecord))
    {
      String str4 = "http://play.ximalaya.com/" + this.mTrackUrl;
      XmTrackRecord localXmTrackRecord = (XmTrackRecord)this.mListenRecord;
      localHashMap.put("trackId", localXmTrackRecord.getId());
      localHashMap.put("duration", localXmTrackRecord.getDuration());
      localHashMap.put("played_secs", localXmTrackRecord.getPlayedSecs());
      localHashMap.put("started_at", localXmTrackRecord.getStartedAt());
      localHashMap.put("play_type", localXmTrackRecord.getPlayType());
      Log.e("XmStatisticsManager", "Post data to server: " + localXmTrackRecord.getId());
      localObject = str4;
    }
    while (true)
      try
      {
        String str2 = BaseCall.doSync(BaseBuilder.urlPost((String)localObject, localHashMap).a()).g().f();
        str1 = str2;
        if (TextUtils.isEmpty(str1))
          continue;
      }
      catch (Exception localException)
      {
        try
        {
          JSONObject localJSONObject = new JSONObject(str1);
          if (!localJSONObject.has("ret"))
            continue;
          int j = localJSONObject.getInt("ret");
          if (j == 0)
            continue;
          i = 0;
          if ((i != 0) || (this.mRetry >= 3))
            break;
          XmStatisticsManager.access$0(this.this$0).post(this);
          return;
          if (!(this.mListenRecord instanceof XmRadioRecord))
            continue;
          String str3 = "http://play.ximalaya.com/" + this.mRadioUrl;
          XmRadioRecord localXmRadioRecord = (XmRadioRecord)this.mListenRecord;
          localHashMap.put("radioId", localXmRadioRecord.getId());
          localHashMap.put("programScheduleId", localXmRadioRecord.getScheduleId());
          localHashMap.put("programId", localXmRadioRecord.getProgramId());
          localHashMap.put("started_at", localXmRadioRecord.getStartedAt());
          localHashMap.put("duration", localXmRadioRecord.getDuration());
          localHashMap.put("played_secs", localXmRadioRecord.getPlayedSecs());
          Log.e("XmStatisticsManager", "Post data to server: " + localXmRadioRecord.getId());
          localObject = str3;
          continue;
          localException = localException;
          localException.printStackTrace();
          String str1 = null;
          continue;
          i = 1;
          continue;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
        int i = 0;
        continue;
        localObject = null;
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmStatisticsManager.Task
 * JD-Core Version:    0.6.0
 */