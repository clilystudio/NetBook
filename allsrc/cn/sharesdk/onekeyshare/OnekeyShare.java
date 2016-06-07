package cn.sharesdk.onekeyshare;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.b.j;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class OnekeyShare
  implements Handler.Callback, PlatformActionListener
{
  private static final int MSG_ACTION_CCALLBACK = 2;
  private static final int MSG_CANCEL_NOTIFY = 3;
  private static final int MSG_TOAST = 1;
  private View bgView;
  private PlatformActionListener callback = this;
  private Context context;
  private ArrayList<CustomerLogo> customers = new ArrayList();
  private ShareContentCustomizeCallback customizeCallback;
  private boolean dialogMode = false;
  private boolean disableSSO;
  private HashMap<String, String> hiddenPlatforms = new HashMap();
  private PlatformListFakeActivity.OnShareButtonClickListener onShareButtonClickListener;
  private HashMap<String, Object> shareParamsMap = new HashMap();
  private boolean silent;
  private OnekeyShareTheme theme;

  private void showNotification(String paramString)
  {
    Toast.makeText(this.context, paramString, 0).show();
  }

  public void addHiddenPlatform(String paramString)
  {
    this.hiddenPlatforms.put(paramString, paramString);
  }

  public void disableSSOWhenAuthorize()
  {
    this.disableSSO = true;
  }

  public PlatformActionListener getCallback()
  {
    return this.callback;
  }

  public ShareContentCustomizeCallback getShareContentCustomizeCallback()
  {
    return this.customizeCallback;
  }

  public String getText()
  {
    if (this.shareParamsMap.containsKey("text"))
      return String.valueOf(this.shareParamsMap.get("text"));
    return null;
  }

  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    NotificationManager localNotificationManager;
    do
    {
      int i;
      do
      {
        int m;
        do
        {
          while (true)
          {
            return false;
            String str2 = String.valueOf(paramMessage.obj);
            Toast.makeText(this.context, str2, 0).show();
            return false;
            switch (paramMessage.arg1)
            {
            default:
              return false;
            case 1:
              int i5 = a.e(this.context, "share_completed");
              if (i5 <= 0)
                continue;
              showNotification(this.context.getString(i5));
              return false;
            case 2:
              String str1 = paramMessage.obj.getClass().getSimpleName();
              if (("WechatClientNotExistException".equals(str1)) || ("WechatTimelineNotSupportedException".equals(str1)) || ("WechatFavoriteNotSupportedException".equals(str1)))
              {
                int j = a.e(this.context, "wechat_client_inavailable");
                if (j <= 0)
                  continue;
                showNotification(this.context.getString(j));
                return false;
              }
              if ("GooglePlusClientNotExistException".equals(str1))
              {
                int i4 = a.e(this.context, "google_plus_client_inavailable");
                if (i4 <= 0)
                  continue;
                showNotification(this.context.getString(i4));
                return false;
              }
              if ("QQClientNotExistException".equals(str1))
              {
                int i3 = a.e(this.context, "qq_client_inavailable");
                if (i3 <= 0)
                  continue;
                showNotification(this.context.getString(i3));
                return false;
              }
              if (("YixinClientNotExistException".equals(str1)) || ("YixinTimelineNotSupportedException".equals(str1)))
              {
                int k = a.e(this.context, "yixin_client_inavailable");
                if (k <= 0)
                  continue;
                showNotification(this.context.getString(k));
                return false;
              }
              if ("KakaoTalkClientNotExistException".equals(str1))
              {
                int i2 = a.e(this.context, "kakaotalk_client_inavailable");
                if (i2 <= 0)
                  continue;
                showNotification(this.context.getString(i2));
                return false;
              }
              if ("KakaoStoryClientNotExistException".equals(str1))
              {
                int i1 = a.e(this.context, "kakaostory_client_inavailable");
                if (i1 <= 0)
                  continue;
                showNotification(this.context.getString(i1));
                return false;
              }
              if ("WhatsAppClientNotExistException".equals(str1))
              {
                int n = a.e(this.context, "whatsapp_client_inavailable");
                if (n <= 0)
                  continue;
                showNotification(this.context.getString(n));
                return false;
              }
            case 3:
            }
          }
          m = a.e(this.context, "share_failed");
        }
        while (m <= 0);
        showNotification(this.context.getString(m));
        return false;
        i = a.e(this.context, "share_canceled");
      }
      while (i <= 0);
      showNotification(this.context.getString(i));
      return false;
      localNotificationManager = (NotificationManager)paramMessage.obj;
    }
    while (localNotificationManager == null);
    localNotificationManager.cancel(paramMessage.arg1);
    return false;
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    Message localMessage = new Message();
    localMessage.what = 2;
    localMessage.arg1 = 3;
    localMessage.arg2 = paramInt;
    localMessage.obj = paramPlatform;
    j.a(localMessage, this);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    Message localMessage = new Message();
    localMessage.what = 2;
    localMessage.arg1 = 1;
    localMessage.arg2 = paramInt;
    localMessage.obj = paramPlatform;
    j.a(localMessage, this);
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    Message localMessage = new Message();
    localMessage.what = 2;
    localMessage.arg1 = 2;
    localMessage.arg2 = paramInt;
    localMessage.obj = paramThrowable;
    j.a(localMessage, this);
    ShareSDK.logDemoEvent(4, paramPlatform);
  }

  public void setAddress(String paramString)
  {
    this.shareParamsMap.put("address", paramString);
  }

  public void setCallback(PlatformActionListener paramPlatformActionListener)
  {
    this.callback = paramPlatformActionListener;
  }

  public void setComment(String paramString)
  {
    this.shareParamsMap.put("comment", paramString);
  }

  public void setCustomerLogo(Bitmap paramBitmap1, Bitmap paramBitmap2, String paramString, View.OnClickListener paramOnClickListener)
  {
    CustomerLogo localCustomerLogo = new CustomerLogo();
    localCustomerLogo.label = paramString;
    localCustomerLogo.enableLogo = paramBitmap1;
    localCustomerLogo.disableLogo = paramBitmap2;
    localCustomerLogo.listener = paramOnClickListener;
    this.customers.add(localCustomerLogo);
  }

  public void setDialogMode()
  {
    this.dialogMode = true;
    this.shareParamsMap.put("dialogMode", Boolean.valueOf(this.dialogMode));
  }

  public void setEditPageBackground(View paramView)
  {
    this.bgView = paramView;
  }

  public void setExecuteUrl(String paramString)
  {
    this.shareParamsMap.put("executeurl", paramString);
  }

  public void setFilePath(String paramString)
  {
    this.shareParamsMap.put("filePath", paramString);
  }

  public void setImageArray(String[] paramArrayOfString)
  {
    this.shareParamsMap.put("imageArray", paramArrayOfString);
  }

  public void setImagePath(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.shareParamsMap.put("imagePath", paramString);
  }

  public void setImageUrl(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.shareParamsMap.put("imageUrl", paramString);
  }

  public void setInstallUrl(String paramString)
  {
    this.shareParamsMap.put("installurl", paramString);
  }

  public void setLatitude(float paramFloat)
  {
    this.shareParamsMap.put("latitude", Float.valueOf(paramFloat));
  }

  public void setLongitude(float paramFloat)
  {
    this.shareParamsMap.put("longitude", Float.valueOf(paramFloat));
  }

  public void setMusicUrl(String paramString)
  {
    this.shareParamsMap.put("musicUrl", paramString);
  }

  public void setOnShareButtonClickListener(PlatformListFakeActivity.OnShareButtonClickListener paramOnShareButtonClickListener)
  {
    this.onShareButtonClickListener = paramOnShareButtonClickListener;
  }

  public void setPlatform(String paramString)
  {
    this.shareParamsMap.put("platform", paramString);
  }

  public void setShareContentCustomizeCallback(ShareContentCustomizeCallback paramShareContentCustomizeCallback)
  {
    this.customizeCallback = paramShareContentCustomizeCallback;
  }

  public void setShareFromQQAuthSupport(boolean paramBoolean)
  {
    this.shareParamsMap.put("isShareTencentWeibo", Boolean.valueOf(paramBoolean));
  }

  public void setSilent(boolean paramBoolean)
  {
    this.silent = paramBoolean;
  }

  public void setSite(String paramString)
  {
    this.shareParamsMap.put("site", paramString);
  }

  public void setSiteUrl(String paramString)
  {
    this.shareParamsMap.put("siteUrl", paramString);
  }

  public void setText(String paramString)
  {
    this.shareParamsMap.put("text", paramString);
  }

  public void setTheme(OnekeyShareTheme paramOnekeyShareTheme)
  {
    this.theme = paramOnekeyShareTheme;
  }

  public void setTitle(String paramString)
  {
    this.shareParamsMap.put("title", paramString);
  }

  public void setTitleUrl(String paramString)
  {
    this.shareParamsMap.put("titleUrl", paramString);
  }

  public void setUrl(String paramString)
  {
    this.shareParamsMap.put("url", paramString);
  }

  public void setVenueDescription(String paramString)
  {
    this.shareParamsMap.put("venueDescription", paramString);
  }

  public void setVenueName(String paramString)
  {
    this.shareParamsMap.put("venueName", paramString);
  }

  public void setViewToShare(View paramView)
  {
    try
    {
      Bitmap localBitmap = a.a(paramView, paramView.getWidth(), paramView.getHeight());
      this.shareParamsMap.put("viewToShare", localBitmap);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void share(HashMap<Platform, HashMap<String, Object>> paramHashMap)
  {
    Iterator localIterator = paramHashMap.entrySet().iterator();
    int i = 0;
    Platform localPlatform;
    label660: HashMap localHashMap;
    int m;
    while (true)
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localPlatform = (Platform)localEntry.getKey();
        localPlatform.SSOSetting(this.disableSSO);
        String str1 = localPlatform.getName();
        if (("KakaoTalk".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage8 = new Message();
          localMessage8.what = 1;
          int i8 = a.e(this.context, "kakaotalk_client_inavailable");
          localMessage8.obj = this.context.getString(i8);
          j.a(localMessage8, this);
          continue;
        }
        if (("KakaoStory".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage7 = new Message();
          localMessage7.what = 1;
          int i7 = a.e(this.context, "kakaostory_client_inavailable");
          localMessage7.obj = this.context.getString(i7);
          j.a(localMessage7, this);
          continue;
        }
        if (("Line".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage6 = new Message();
          localMessage6.what = 1;
          int i6 = a.e(this.context, "line_client_inavailable");
          localMessage6.obj = this.context.getString(i6);
          j.a(localMessage6, this);
          continue;
        }
        if (("WhatsApp".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage5 = new Message();
          localMessage5.what = 1;
          int i5 = a.e(this.context, "whatsapp_client_inavailable");
          localMessage5.obj = this.context.getString(i5);
          j.a(localMessage5, this);
          continue;
        }
        if (("Pinterest".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage4 = new Message();
          localMessage4.what = 1;
          int i4 = a.e(this.context, "pinterest_client_inavailable");
          localMessage4.obj = this.context.getString(i4);
          j.a(localMessage4, this);
          continue;
        }
        if (("Instagram".equals(str1)) && (!localPlatform.isClientValid()))
        {
          Message localMessage3 = new Message();
          localMessage3.what = 1;
          int i3 = a.e(this.context, "instagram_client_inavailable");
          localMessage3.obj = this.context.getString(i3);
          j.a(localMessage3, this);
          continue;
        }
        boolean bool1 = "Laiwang".equals(str1);
        boolean bool2 = "LaiwangMoments".equals(str1);
        if (((bool1) || (bool2)) && (!localPlatform.isClientValid()))
        {
          Message localMessage1 = new Message();
          localMessage1.what = 1;
          int j = a.e(this.context, "laiwang_client_inavailable");
          localMessage1.obj = this.context.getString(j);
          j.a(localMessage1, this);
          continue;
        }
        if (("YixinMoments".equals(str1)) || ("Yixin".equals(str1)));
        for (int k = 1; ; k = 0)
        {
          if ((k == 0) || (localPlatform.isClientValid()))
            break label660;
          Message localMessage2 = new Message();
          localMessage2.what = 1;
          int i2 = a.e(this.context, "yixin_client_inavailable");
          localMessage2.obj = this.context.getString(i2);
          j.a(localMessage2, this);
          break;
        }
        localHashMap = (HashMap)localEntry.getValue();
        String str2 = String.valueOf(localHashMap.get("imagePath"));
        if ((str2 != null) && (new File(str2).exists()))
        {
          if (!str2.endsWith(".gif"))
            break;
          m = 9;
        }
      }
    while (true)
    {
      label720: localHashMap.put("shareType", Integer.valueOf(m));
      if (i == 0)
      {
        int i1 = a.e(this.context, "sharing");
        if (i1 > 0)
          showNotification(this.context.getString(i1));
      }
      for (int n = 1; ; n = i)
      {
        localPlatform.setPlatformActionListener(this.callback);
        ShareCore localShareCore = new ShareCore();
        localShareCore.setShareContentCustomizeCallback(this.customizeCallback);
        localShareCore.share(localPlatform, localHashMap);
        i = n;
        break;
        if ((!localHashMap.containsKey("url")) || (TextUtils.isEmpty(localHashMap.get("url").toString())))
          break label1086;
        if ((!localHashMap.containsKey("musicUrl")) || (TextUtils.isEmpty(localHashMap.get("musicUrl").toString())))
          break label1080;
        m = 5;
        break label720;
        Bitmap localBitmap = (Bitmap)localHashMap.get("viewToShare");
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          if ((!localHashMap.containsKey("url")) || (TextUtils.isEmpty(localHashMap.get("url").toString())))
            break label1086;
          if ((!localHashMap.containsKey("musicUrl")) || (TextUtils.isEmpty(localHashMap.get("musicUrl").toString())))
            break label1080;
          m = 5;
          break label720;
        }
        Object localObject = localHashMap.get("imageUrl");
        if ((localObject == null) || (TextUtils.isEmpty(String.valueOf(localObject))))
          break label1092;
        if (String.valueOf(localObject).endsWith(".gif"))
        {
          m = 9;
          break label720;
        }
        if ((!localHashMap.containsKey("url")) || (TextUtils.isEmpty(localHashMap.get("url").toString())))
          break label1086;
        if ((!localHashMap.containsKey("musicUrl")) || (TextUtils.isEmpty(localHashMap.get("musicUrl").toString())))
          break label1080;
        m = 5;
        break label720;
        return;
      }
      label1080: m = 4;
      continue;
      label1086: m = 2;
      continue;
      label1092: m = 1;
    }
  }

  public void show(Context paramContext)
  {
    ShareSDK.initSDK(paramContext);
    this.context = paramContext;
    ShareSDK.logDemoEvent(1, null);
    if (this.shareParamsMap.containsKey("platform"))
    {
      String str = String.valueOf(this.shareParamsMap.get("platform"));
      Platform localPlatform = ShareSDK.getPlatform(str);
      if ((this.silent) || (ShareCore.isUseClientToShare(str)) || ((localPlatform instanceof CustomPlatform)))
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put(ShareSDK.getPlatform(str), this.shareParamsMap);
        share(localHashMap);
        return;
      }
    }
    PlatformListFakeActivity localPlatformListFakeActivity;
    try
    {
      if (OnekeyShareTheme.SKYBLUE == this.theme);
      for (localPlatformListFakeActivity = (PlatformListFakeActivity)Class.forName("cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage").newInstance(); ; localPlatformListFakeActivity = (PlatformListFakeActivity)Class.forName("cn.sharesdk.onekeyshare.theme.classic.PlatformListPage").newInstance())
      {
        localPlatformListFakeActivity.setDialogMode(this.dialogMode);
        localPlatformListFakeActivity.setShareParamsMap(this.shareParamsMap);
        localPlatformListFakeActivity.setSilent(this.silent);
        localPlatformListFakeActivity.setCustomerLogos(this.customers);
        localPlatformListFakeActivity.setBackgroundView(this.bgView);
        localPlatformListFakeActivity.setHiddenPlatforms(this.hiddenPlatforms);
        localPlatformListFakeActivity.setOnShareButtonClickListener(this.onShareButtonClickListener);
        localPlatformListFakeActivity.setThemeShareCallback(new OnekeyShare.1(this));
        if (!this.shareParamsMap.containsKey("platform"))
          break;
        localPlatformListFakeActivity.showEditPage(paramContext, ShareSDK.getPlatform(String.valueOf(this.shareParamsMap.get("platform"))));
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    localPlatformListFakeActivity.show(paramContext, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.OnekeyShare
 * JD-Core Version:    0.6.0
 */