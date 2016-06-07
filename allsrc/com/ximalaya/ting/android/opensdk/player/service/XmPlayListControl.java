package com.ximalaya.ting.android.opensdk.player.service;

import android.util.Log;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.constants.PlayerConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class XmPlayListControl
{
  public static final int PLAY_SOURCE_NONE = 1;
  public static final int PLAY_SOURCE_RADIO = 3;
  public static final int PLAY_SOURCE_TRACK = 2;
  private static final String TAG = "XmPlayListControl";
  private volatile int mCurrIndex = -1;
  private PlayableModel mCurrModel;
  private int mCurrSize;
  private int mLastIndex = -1;
  private PlayableModel mLastModel;
  private boolean mLoading = false;
  private int mNextPageId;
  private int mPageSize;
  private Map<String, String> mParam;
  private List<Track> mPlayList = new ArrayList();
  private XmPlayListControl.PlayMode mPlayMode = XmPlayListControl.PlayMode.PLAY_MODEL_LIST;
  private int mPlaySource = 1;
  private int mPrePageId;
  private int mTotalPage;
  private CommonRequest mXimalaya = CommonRequest.getInstanse();

  private boolean checkListType(Map<String, String> paramMap)
  {
    boolean bool;
    if ((paramMap == null) || (this.mParam == null))
      bool = false;
    while (true)
    {
      return bool;
      Iterator localIterator = paramMap.entrySet().iterator();
      bool = true;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        bool &= ((String)localEntry.getValue()).equals(this.mParam.get(str));
      }
    }
  }

  private int getRadioNextIndex()
  {
    return -1;
  }

  private int getRadioPreIndex()
  {
    return -1;
  }

  private int getTrackNextIndex()
  {
    int i;
    switch ($SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode()[this.mPlayMode.ordinal()])
    {
    default:
      i = -1;
    case 3:
    case 4:
    case 2:
    case 5:
    }
    do
    {
      do
      {
        do
        {
          return i;
          i = 1 + this.mCurrIndex;
          if (!needLoadNextPage(i))
            continue;
          loadNextPageSync();
        }
        while (i < this.mCurrSize);
        return -1;
        i = 1 + this.mCurrIndex;
        if (!needLoadNextPage(i))
          continue;
        loadNextPageSync();
      }
      while (i < this.mCurrSize);
      return 0;
      return this.mCurrIndex;
      i = (int)(Math.random() * this.mCurrSize);
    }
    while (i == this.mCurrIndex);
    return i;
  }

  private int getTrackPreIndex()
  {
    int i;
    switch ($SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode()[this.mPlayMode.ordinal()])
    {
    default:
      i = -1;
    case 3:
    case 4:
    case 2:
    case 5:
    }
    do
    {
      do
      {
        do
        {
          return i;
          i = -1 + this.mCurrIndex;
        }
        while (i >= 0);
        return -1;
        i = -1 + this.mCurrIndex;
      }
      while (i >= 0);
      return -1 + this.mCurrSize;
      return this.mCurrIndex;
      i = (int)(Math.random() * this.mCurrSize);
    }
    while (i == this.mCurrIndex);
    return i;
  }

  private boolean hasNextPage()
  {
    if (this.mTotalPage <= 0);
    do
      return true;
    while (this.mNextPageId < this.mTotalPage);
    return false;
  }

  private void loadNextPageSync()
  {
    Log.e("XmPlayListControl", "loadNextPageSync");
    if ((this.mLoading) || (this.mParam == null))
      return;
    this.mLoading = true;
    this.mParam.put("page", 1 + this.mNextPageId);
    if (!this.mParam.containsKey("count"))
      this.mParam.put("count", this.mXimalaya.getDefaultPagesize());
    CommonRequest.getTrackList(this.mParam, new XmPlayListControl.1(this));
  }

  private boolean needLoadNextPage(int paramInt)
  {
    if ((this.mParam != null) && (paramInt + PlayerConstants.PRE_LOAD_INDEX >= this.mCurrSize) && (hasNextPage()))
    {
      Log.e("XmPlayListControl", "needLoadNextPage currPage:" + this.mNextPageId + ", currPageSize:" + this.mPageSize + ", next:" + paramInt);
      return true;
    }
    return false;
  }

  private void resetPlayList()
  {
    synchronized (this.mPlayList)
    {
      this.mParam = null;
      this.mPlayList.clear();
      this.mNextPageId = 0;
      this.mPageSize = 0;
      this.mTotalPage = 0;
      this.mCurrIndex = -1;
      this.mCurrSize = 0;
      this.mLastIndex = -1;
      this.mCurrModel = null;
      return;
    }
  }

  public int getCurrIndex()
  {
    return this.mCurrIndex;
  }

  public int getCurrListSize()
  {
    return this.mCurrSize;
  }

  public PlayableModel getCurrentPlayableModel()
  {
    return this.mCurrModel;
  }

  public int getLastIndex()
  {
    return this.mLastIndex;
  }

  public Radio getLastRadio()
  {
    if ((this.mLastModel instanceof Radio))
      return (Radio)this.mLastModel;
    return null;
  }

  public int getNextIndex()
  {
    if (this.mPlaySource == 3)
      return getRadioNextIndex();
    if (this.mPlaySource == 2)
      return getTrackNextIndex();
    return -1;
  }

  public Map getParams()
  {
    return this.mParam;
  }

  public List<Track> getPlayList()
  {
    return this.mPlayList;
  }

  public XmPlayListControl.PlayMode getPlayMode()
  {
    return this.mPlayMode;
  }

  public int getPlaySource()
  {
    return this.mPlaySource;
  }

  public PlayableModel getPlayableModel(int paramInt)
  {
    Radio localRadio;
    if (this.mPlaySource == 3)
      localRadio = getRadio();
    int k;
    do
    {
      do
      {
        int j;
        do
        {
          List localList;
          do
          {
            int i;
            do
            {
              return localRadio;
              i = this.mPlaySource;
              localRadio = null;
            }
            while (i != 2);
            localList = this.mPlayList;
            localRadio = null;
          }
          while (localList == null);
          j = this.mPlayList.size();
          localRadio = null;
        }
        while (j <= 0);
        localRadio = null;
      }
      while (paramInt < 0);
      k = this.mPlayList.size();
      localRadio = null;
    }
    while (paramInt >= k);
    return (PlayableModel)this.mPlayList.get(paramInt);
  }

  public int getPreIndex()
  {
    if (this.mPlaySource == 3)
      return getRadioPreIndex();
    if (this.mPlaySource == 2)
      return getTrackPreIndex();
    return -1;
  }

  public Radio getRadio()
  {
    if ((this.mCurrModel instanceof Radio))
      return (Radio)this.mCurrModel;
    return null;
  }

  public void setCurrIndex(int paramInt)
  {
    if (paramInt != this.mCurrIndex)
    {
      this.mLastIndex = this.mCurrIndex;
      this.mCurrIndex = paramInt;
      this.mLastModel = this.mCurrModel;
      this.mCurrModel = getPlayableModel(this.mCurrIndex);
    }
    if (needLoadNextPage(paramInt + 1))
      loadNextPageSync();
  }

  public void setPlayList(Map<String, String> paramMap, List<Track> paramList)
  {
    if ((paramMap != null) && (!paramMap.containsKey("track_base_url")))
      paramMap = null;
    this.mPlaySource = 2;
    if (paramList == null)
    {
      resetPlayList();
      return;
    }
    synchronized (this.mPlayList)
    {
      if ((checkListType(paramMap)) && (this.mPlayList.size() > paramList.size()))
        return;
    }
    this.mTotalPage = 0;
    this.mParam = paramMap;
    if (this.mParam != null)
      if ((this.mParam.containsKey("total_page")) && (this.mParam.get("total_page") != null))
      {
        this.mTotalPage = Integer.valueOf((String)this.mParam.remove("total_page")).intValue();
        if ((!this.mParam.containsKey("count")) || (this.mParam.get("count") == null))
          break label368;
        this.mPageSize = Integer.valueOf((String)this.mParam.get("count")).intValue();
        label199: if (this.mPageSize <= 0)
          this.mPageSize = this.mXimalaya.getDefaultPagesize();
        if ((!this.mParam.containsKey("page")) || (this.mParam.get("page") == null))
          break label376;
        this.mNextPageId = Integer.valueOf((String)this.mParam.get("page")).intValue();
        label269: if (this.mNextPageId <= 0)
          this.mNextPageId = (paramList.size() / this.mPageSize);
        label291: this.mPlayList.clear();
        this.mPlayList.addAll(paramList);
        this.mCurrSize = this.mPlayList.size();
        if (!this.mPlayList.contains(this.mCurrModel))
          break label397;
      }
    label397: for (this.mCurrIndex = this.mPlayList.indexOf(this.mCurrModel); ; this.mCurrIndex = -1)
    {
      monitorexit;
      return;
      this.mTotalPage = 0;
      break;
      label368: this.mPageSize = 0;
      break label199;
      label376: this.mNextPageId = 0;
      break label269;
      this.mPageSize = 0;
      this.mNextPageId = 0;
      break label291;
    }
  }

  public XmPlayListControl.PlayMode setPlayMode(XmPlayListControl.PlayMode paramPlayMode)
  {
    this.mPlayMode = paramPlayMode;
    return paramPlayMode;
  }

  public void setRadio(Radio paramRadio)
  {
    if (paramRadio == null);
    do
    {
      return;
      if (this.mPlaySource == 3)
        continue;
      resetPlayList();
      this.mPlaySource = 3;
    }
    while (paramRadio.equals(this.mCurrModel));
    this.mLastModel = this.mCurrModel;
    this.mCurrModel = paramRadio;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayListControl
 * JD-Core Version:    0.6.0
 */