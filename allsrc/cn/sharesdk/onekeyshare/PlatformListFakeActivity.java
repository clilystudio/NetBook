package cn.sharesdk.onekeyshare;

import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class PlatformListFakeActivity extends a
{
  protected View backgroundView;
  private boolean canceled = false;
  protected ArrayList<CustomerLogo> customerLogos;
  protected boolean dialogMode = false;
  protected HashMap<String, String> hiddenPlatforms;
  protected PlatformListFakeActivity.OnShareButtonClickListener onShareButtonClickListener;
  protected HashMap<String, Object> shareParamsMap;
  protected boolean silent;
  protected ThemeShareCallback themeShareCallback;

  public View getBackgroundView()
  {
    return this.backgroundView;
  }

  public ArrayList<CustomerLogo> getCustomerLogos()
  {
    return this.customerLogos;
  }

  public HashMap<String, String> getHiddenPlatforms()
  {
    return this.hiddenPlatforms;
  }

  public PlatformListFakeActivity.OnShareButtonClickListener getOnShareButtonClickListener()
  {
    return this.onShareButtonClickListener;
  }

  public HashMap<String, Object> getShareParamsMap()
  {
    return this.shareParamsMap;
  }

  public ThemeShareCallback getThemeShareCallback()
  {
    return this.themeShareCallback;
  }

  public boolean isDialogMode()
  {
    return this.dialogMode;
  }

  public boolean isSilent()
  {
    return this.silent;
  }

  public void onCreate()
  {
    super.onCreate();
    this.canceled = false;
    if (this.themeShareCallback == null)
      finish();
  }

  public boolean onFinish()
  {
    if (this.canceled)
      ShareSDK.logDemoEvent(2, null);
    return super.onFinish();
  }

  public boolean onKeyEvent(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      this.canceled = true;
    return super.onKeyEvent(paramInt, paramKeyEvent);
  }

  protected void onShareButtonClick(View paramView, List<Object> paramList)
  {
    if (this.onShareButtonClickListener != null)
      this.onShareButtonClickListener.onClick(paramView, paramList);
    HashMap localHashMap1 = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof CustomerLogo))
      {
        ((CustomerLogo)localObject).listener.onClick(paramView);
        continue;
      }
      Platform localPlatform = (Platform)localObject;
      String str = localPlatform.getName();
      if ((this.silent) || (ShareCore.isDirectShare(localPlatform)))
      {
        HashMap localHashMap2 = new HashMap(this.shareParamsMap);
        localHashMap2.put("platform", str);
        localHashMap1.put(localPlatform, localHashMap2);
        continue;
      }
      localArrayList.add(localPlatform);
    }
    if (localHashMap1.size() > 0)
      this.themeShareCallback.doShare(localHashMap1);
    if (localArrayList.size() > 0)
      showEditPage(localArrayList);
    finish();
  }

  public void setBackgroundView(View paramView)
  {
    this.backgroundView = paramView;
  }

  protected void setCanceled(boolean paramBoolean)
  {
    this.canceled = paramBoolean;
  }

  public void setCustomerLogos(ArrayList<CustomerLogo> paramArrayList)
  {
    this.customerLogos = paramArrayList;
  }

  public void setDialogMode(boolean paramBoolean)
  {
    this.dialogMode = paramBoolean;
  }

  public void setHiddenPlatforms(HashMap<String, String> paramHashMap)
  {
    this.hiddenPlatforms = paramHashMap;
  }

  public void setOnShareButtonClickListener(PlatformListFakeActivity.OnShareButtonClickListener paramOnShareButtonClickListener)
  {
    this.onShareButtonClickListener = paramOnShareButtonClickListener;
  }

  public void setShareParamsMap(HashMap<String, Object> paramHashMap)
  {
    this.shareParamsMap = paramHashMap;
  }

  public void setSilent(boolean paramBoolean)
  {
    this.silent = paramBoolean;
  }

  public void setThemeShareCallback(ThemeShareCallback paramThemeShareCallback)
  {
    this.themeShareCallback = paramThemeShareCallback;
  }

  public void show(Context paramContext, Intent paramIntent)
  {
    super.show(paramContext, paramIntent);
  }

  public void showEditPage(Context paramContext, Platform paramPlatform)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramPlatform);
    showEditPage(paramContext, localArrayList);
  }

  protected void showEditPage(Context paramContext, List<Platform> paramList)
  {
    String str = getClass().getPackage().getName() + ".EditPage";
    try
    {
      EditPageFakeActivity localEditPageFakeActivity = (EditPageFakeActivity)Class.forName(str).newInstance();
      localEditPageFakeActivity.setBackgroundView(this.backgroundView);
      localEditPageFakeActivity.setShareData(this.shareParamsMap);
      localEditPageFakeActivity.setPlatforms(paramList);
      if (this.dialogMode)
        localEditPageFakeActivity.setDialogMode();
      localEditPageFakeActivity.showForResult(paramContext, null, new PlatformListFakeActivity.1(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void showEditPage(List<Platform> paramList)
  {
    showEditPage(getContext(), paramList);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.PlatformListFakeActivity
 * JD-Core Version:    0.6.0
 */