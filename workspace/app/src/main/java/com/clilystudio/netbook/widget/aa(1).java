package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import com.a.a.c;
import com.clilystudio.netbook.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class aa extends c
{
  aa(HomeFindSecretItem paramHomeFindSecretItem, Context paramContext)
  {
  }

  public final void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray.length() > 0)
      try
      {
        String str = paramJSONArray.getJSONObject(0).getString("iid");
        if ((str != null) && (str.length() > 0))
        {
          if (HomeFindSecretItem.a(this.b).isShowing())
            new com.clilystudio.netbook.reader.random.a(HomeFindSecretItem.a(this.b), (Activity)this.a, false).b(new String[] { str });
          com.arcsoft.hpay100.a.a.c(this.b.getContext(), str, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B");
          com.arcsoft.hpay100.a.a.i(this.b.getContext(), str);
          return;
        }
        e.a((Activity)this.a, "打开失败或暂时未开放");
        HomeFindSecretItem.a(this.b).dismiss();
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        e.a((Activity)this.a, "打开失败或暂时未开放");
        HomeFindSecretItem.a(this.b).dismiss();
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.aa
 * JD-Core Version:    0.6.0
 */