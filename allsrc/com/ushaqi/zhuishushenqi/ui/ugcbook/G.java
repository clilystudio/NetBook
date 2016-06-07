package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.support.design.widget.am;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ResultStatus;
import com.ushaqi.zhuishushenqi.model.UGCNewCollection;
import java.io.IOException;

final class G extends c<Void, ResultStatus>
{
  public G(UGCGuideAddCollectionActivity paramUGCGuideAddCollectionActivity)
  {
    super(paramUGCGuideAddCollectionActivity, "正在保存到草稿箱...");
    UGCNewCollection localUGCNewCollection = UGCGuideAddCollectionActivity.b(paramUGCGuideAddCollectionActivity);
    localUGCNewCollection.setTitle(UGCGuideAddCollectionActivity.c(paramUGCGuideAddCollectionActivity).getText().toString());
    localUGCNewCollection.setDesc(UGCGuideAddCollectionActivity.d(paramUGCGuideAddCollectionActivity).getText().toString());
  }

  private ResultStatus a()
  {
    try
    {
      Account localAccount = am.a(this.a);
      if (localAccount != null)
      {
        if ((UGCGuideAddCollectionActivity.e(this.a) != null) && (!UGCGuideAddCollectionActivity.e(this.a).equals("")))
          return b.b().b(UGCGuideAddCollectionActivity.f(this.a), localAccount.getToken(), UGCGuideAddCollectionActivity.e(this.a));
        ResultStatus localResultStatus = b.b().b(UGCGuideAddCollectionActivity.g(this.a), localAccount.getToken());
        return localResultStatus;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.G
 * JD-Core Version:    0.6.0
 */