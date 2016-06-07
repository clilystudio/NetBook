package com.arcsoft.hpay100.config;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.y;
import java.io.Serializable;
import java.util.HashMap;

public class HPaySMS
  implements Serializable
{
  private static final long serialVersionUID = -2531892219507044232L;
  public int mAmount = 0;
  public String mChID = "";
  public String mChType = "";
  public int mCodeType = 0;
  public int mCorp = 1;
  public String mCorpFeeCode = "";
  public String mDetail = "";
  public String mFeeUrl = "";
  public int mIntervalTimes = 3;
  public int mIsFullScreen = 0;
  public HashMap mJsUrlHashMap = null;
  public String mOpenUrl = "";
  public String mOrderidAPP = "";
  public String mOrderidHR = "";
  public String mPayId = "";
  public String mPayName = "";
  public String mPhone = "";
  public int mRealAmount = 0;
  public String mReplyAdderss = "";
  public String mReplyContent = "";
  public String[] mReplyKeyword = null;
  public String[] mSMSAddress;
  public String[] mSMSContent;
  public int mScheme = 3;
  public int mSdkFeeType = 0;
  private int mSendIndex = 0;
  public String mYzmRegx = "";

  public void requestPay$1361a8a9(Context paramContext, int paramInt, y paramy)
  {
    b.a = "";
    b.b = "";
    b.d = 0;
    Handler localHandler = new Handler(paramContext.getMainLooper());
    if ((this.mSMSAddress == null) || (this.mSMSContent == null))
    {
      if (paramy != null)
        paramy.a(a.a(this, 6102, "短信地址或内容为空"));
      a.c(paramContext, this.mOrderidAPP, this.mOrderidHR, this.mScheme, this.mPayId, this.mChType, this.mChID, this.mAmount, "2", "6102", paramInt);
      return;
    }
    if ((this.mSMSAddress.length == 0) || (this.mSMSContent.length == 0))
    {
      if (paramy != null)
        paramy.a(a.a(this, 6102, "短信地址或内容为空"));
      a.c(paramContext, this.mOrderidAPP, this.mOrderidHR, this.mScheme, this.mPayId, this.mChType, this.mChID, this.mAmount, "2", "6102", paramInt);
      return;
    }
    if ((TextUtils.isEmpty(this.mSMSAddress[0])) || (TextUtils.isEmpty(this.mSMSContent[0])))
    {
      if (paramy != null)
        paramy.a(a.a(this, 6102, "短信地址或内容为空"));
      a.c(paramContext, this.mOrderidAPP, this.mOrderidHR, this.mScheme, this.mPayId, this.mChType, this.mChID, this.mAmount, "2", "6102", paramInt);
      return;
    }
    if (!b.c(paramContext))
    {
      if (paramy != null)
        paramy.a(a.a(this, 6103, "短信发送失败，请检查SIM卡"));
      a.c(paramContext, this.mOrderidAPP, this.mOrderidHR, this.mScheme, this.mPayId, this.mChType, this.mChID, this.mAmount, "2", "6103", paramInt);
      return;
    }
    if ((!TextUtils.isEmpty(this.mReplyAdderss)) && (!TextUtils.isEmpty(this.mReplyContent)) && (this.mReplyKeyword != null) && (this.mReplyKeyword.length > 0))
    {
      b.a = this.mReplyAdderss;
      b.b = this.mReplyContent;
      b.c = this.mReplyKeyword;
      b.d = this.mSMSAddress.length;
    }
    c.a(paramContext, this.mSMSAddress[0], this.mSMSContent[0], new z(this, paramy, paramContext, paramInt, localHandler));
    this.mSendIndex = (1 + this.mSendIndex);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.HPaySMS
 * JD-Core Version:    0.6.0
 */