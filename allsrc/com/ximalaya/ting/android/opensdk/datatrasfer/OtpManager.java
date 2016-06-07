package com.ximalaya.ting.android.opensdk.datatrasfer;

import android.content.Context;
import android.text.TextUtils;
import com.squareup.okhttp.D;
import com.ximalaya.ting.android.opensdk.httputil.BaseBuilder;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.util.SharedPreferencesUtil;

public class OtpManager
{
  private static Context mContext;
  private static OtpManager mSingleton;
  private long mExpire;
  private String mOtp = "";

  private boolean checkExpire(long paramLong)
  {
    return System.currentTimeMillis() - paramLong > 604800000L;
  }

  public static OtpManager getInstanse()
  {
    if (mSingleton == null)
      monitorenter;
    try
    {
      if (mSingleton == null)
        mSingleton = new OtpManager();
      return mSingleton;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public String getOtp()
  {
    return this.mOtp;
  }

  public void init(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    mContext = localContext;
    if ((SharedPreferencesUtil.getInstance(localContext).contains("otp")) && (SharedPreferencesUtil.getInstance(mContext).contains("expire_in")))
    {
      this.mOtp = SharedPreferencesUtil.getInstance(mContext).getString("otp");
      this.mExpire = SharedPreferencesUtil.getInstance(mContext).getLong("expire_in");
      if ((TextUtils.isEmpty(this.mOtp)) || (checkExpire(this.mExpire)))
        update();
      return;
    }
    update();
  }

  public void setOtp(String paramString, long paramLong)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramLong != 0L))
    {
      this.mOtp = paramString;
      this.mExpire = paramLong;
      SharedPreferencesUtil.getInstance(mContext).saveString("otp", paramString);
      SharedPreferencesUtil.getInstance(mContext).saveLong("expire_in", paramLong);
    }
  }

  public void update()
  {
    try
    {
      D localD2 = BaseBuilder.urlPost("http://api.ximalaya.com/openapi-platformcoorp-authenticate-app/platformcoorp/generate_otp", CommonRequest.getInstanse().assembleCommonParams(), CommonRequest.getInstanse().getAppsecret());
      localD1 = localD2;
      BaseCall.doAsync(localD1.a(), new OtpManager.1(this));
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      while (true)
        D localD1 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.OtpManager
 * JD-Core Version:    0.6.0
 */