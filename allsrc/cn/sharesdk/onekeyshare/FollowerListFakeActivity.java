package cn.sharesdk.onekeyshare;

import cn.sharesdk.framework.Platform;
import com.mob.tools.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class FollowerListFakeActivity extends a
{
  protected Platform platform;

  public static FollowerListFakeActivity.FollowersResult parseFollowers(String paramString, HashMap<String, Object> paramHashMap, HashMap<String, Boolean> paramHashMap1)
  {
    if ((paramHashMap == null) || (paramHashMap.size() <= 0))
      return null;
    ArrayList localArrayList = new ArrayList();
    boolean bool6;
    boolean bool2;
    if ("SinaWeibo".equals(paramString))
    {
      Iterator localIterator6 = ((ArrayList)paramHashMap.get("users")).iterator();
      while (localIterator6.hasNext())
      {
        HashMap localHashMap6 = (HashMap)localIterator6.next();
        String str5 = String.valueOf(localHashMap6.get("id"));
        if (paramHashMap1.containsKey(str5))
          continue;
        FollowerListFakeActivity.Following localFollowing5 = new FollowerListFakeActivity.Following();
        localFollowing5.uid = str5;
        localFollowing5.screenName = String.valueOf(localHashMap6.get("name"));
        localFollowing5.description = String.valueOf(localHashMap6.get("description"));
        localFollowing5.icon = String.valueOf(localHashMap6.get("profile_image_url"));
        localFollowing5.atName = localFollowing5.screenName;
        paramHashMap1.put(localFollowing5.uid, Boolean.valueOf(true));
        localArrayList.add(localFollowing5);
      }
      if (((Integer)paramHashMap.get("total_number")).intValue() > paramHashMap1.size())
      {
        bool6 = true;
        bool2 = bool6;
      }
    }
    label686: boolean bool1;
    do
    {
      while (true)
      {
        FollowerListFakeActivity.FollowersResult localFollowersResult = new FollowerListFakeActivity.FollowersResult();
        localFollowersResult.list = localArrayList;
        localFollowersResult.hasNextPage = bool2;
        return localFollowersResult;
        bool6 = false;
        break;
        if ("TencentWeibo".equals(paramString))
        {
          if (((Integer)paramHashMap.get("hasnext")).intValue() == 0);
          for (boolean bool5 = true; ; bool5 = false)
          {
            Iterator localIterator4 = ((ArrayList)paramHashMap.get("info")).iterator();
            while (localIterator4.hasNext())
            {
              HashMap localHashMap5 = (HashMap)localIterator4.next();
              String str4 = String.valueOf(localHashMap5.get("name"));
              if (paramHashMap1.containsKey(str4))
                continue;
              FollowerListFakeActivity.Following localFollowing4 = new FollowerListFakeActivity.Following();
              localFollowing4.screenName = String.valueOf(localHashMap5.get("nick"));
              localFollowing4.uid = str4;
              localFollowing4.atName = str4;
              Iterator localIterator5 = ((ArrayList)localHashMap5.get("tweet")).iterator();
              if (localIterator5.hasNext())
                localFollowing4.description = String.valueOf(((HashMap)localIterator5.next()).get("text"));
              localFollowing4.icon = (String.valueOf(localHashMap5.get("head")) + "/100");
              paramHashMap1.put(localFollowing4.uid, Boolean.valueOf(true));
              localArrayList.add(localFollowing4);
            }
          }
          bool2 = bool5;
          continue;
        }
        if (!"Facebook".equals(paramString))
          break label686;
        Iterator localIterator3 = ((ArrayList)paramHashMap.get("data")).iterator();
        while (localIterator3.hasNext())
        {
          HashMap localHashMap3 = (HashMap)localIterator3.next();
          String str3 = String.valueOf(localHashMap3.get("id"));
          if (paramHashMap1.containsKey(str3))
            continue;
          FollowerListFakeActivity.Following localFollowing3 = new FollowerListFakeActivity.Following();
          localFollowing3.uid = str3;
          localFollowing3.atName = ("[" + str3 + "]");
          localFollowing3.screenName = String.valueOf(localHashMap3.get("name"));
          HashMap localHashMap4 = (HashMap)localHashMap3.get("picture");
          if (localHashMap4 != null)
            localFollowing3.icon = String.valueOf(((HashMap)localHashMap4.get("data")).get("url"));
          paramHashMap1.put(localFollowing3.uid, Boolean.valueOf(true));
          localArrayList.add(localFollowing3);
        }
        bool2 = ((HashMap)paramHashMap.get("paging")).containsKey("next");
      }
      if ("Twitter".equals(paramString))
      {
        Iterator localIterator2 = ((ArrayList)paramHashMap.get("users")).iterator();
        while (true)
        {
          boolean bool4 = localIterator2.hasNext();
          bool2 = false;
          if (!bool4)
            break;
          HashMap localHashMap2 = (HashMap)localIterator2.next();
          String str2 = String.valueOf(localHashMap2.get("screen_name"));
          if (paramHashMap1.containsKey(str2))
            continue;
          FollowerListFakeActivity.Following localFollowing2 = new FollowerListFakeActivity.Following();
          localFollowing2.uid = str2;
          localFollowing2.atName = str2;
          localFollowing2.screenName = String.valueOf(localHashMap2.get("name"));
          localFollowing2.description = String.valueOf(localHashMap2.get("description"));
          localFollowing2.icon = String.valueOf(localHashMap2.get("profile_image_url"));
          paramHashMap1.put(localFollowing2.uid, Boolean.valueOf(true));
          localArrayList.add(localFollowing2);
        }
      }
      bool1 = "FacebookMessenger".equals(paramString);
      bool2 = false;
    }
    while (!bool1);
    Iterator localIterator1 = ((ArrayList)paramHashMap.get("users")).iterator();
    while (true)
    {
      boolean bool3 = localIterator1.hasNext();
      bool2 = false;
      if (!bool3)
        break;
      HashMap localHashMap1 = (HashMap)localIterator1.next();
      String str1 = String.valueOf(localHashMap1.get("jid"));
      if (paramHashMap1.containsKey(str1))
        continue;
      FollowerListFakeActivity.Following localFollowing1 = new FollowerListFakeActivity.Following();
      localFollowing1.uid = str1;
      localFollowing1.atName = str1;
      localFollowing1.screenName = String.valueOf(localHashMap1.get("name"));
      paramHashMap1.put(localFollowing1.uid, Boolean.valueOf(true));
      localArrayList.add(localFollowing1);
    }
  }

  public Platform getPlatform()
  {
    return this.platform;
  }

  public boolean isRadioMode(String paramString)
  {
    return "FacebookMessenger".equals(paramString);
  }

  public void setPlatform(Platform paramPlatform)
  {
    this.platform = paramPlatform;
  }

  public void setResultForChecked(ArrayList<String> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("selected", paramArrayList);
    localHashMap.put("platform", this.platform);
    setResult(localHashMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.FollowerListFakeActivity
 * JD-Core Version:    0.6.0
 */