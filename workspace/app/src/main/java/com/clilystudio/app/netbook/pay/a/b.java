package com.clilystudio.app.netbook.pay.a;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.y;
import org.json.JSONException;
import org.json.JSONObject;

final class b extends Handler
{
  b(a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      e locale = new e((String)paramMessage.obj);
      String str1 = locale.a();
      i.a().c(new y(TextUtils.equals(str1, "9000")));
      if (TextUtils.equals(str1, "9000"))
      {
        try
        {
          String str2 = locale.b();
          if (!com.arcsoft.hpay100.a.a.a(str2.substring(0, str2.indexOf("&sign_type=")), com.arcsoft.hpay100.a.a.i(str2, "&").getString("sign").replace("\"", ""), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"))
          {
            Toast.makeText(a.a(this.a), "您的订单信息已被非法篡改", 0).show();
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          Toast.makeText(a.a(this.a), "您的订单信息已被非法篡改", 0).show();
          return;
        }
        Toast.makeText(a.a(this.a), "支付成功", 0).show();
        com.umeng.a.b.a(a.a(this.a), "charge_complete", "alipay");
        return;
      }
      if (TextUtils.equals(str1, "8000"))
      {
        Toast.makeText(a.a(this.a), "支付结果确认中", 0).show();
        return;
      }
      if (TextUtils.equals(str1, "6001"))
      {
        com.umeng.a.b.a(a.a(this.a), "charge_money_cancel", "alipay");
        return;
      }
      Toast.makeText(a.a(this.a), "支付失败", 0).show();
      com.umeng.a.b.a(a.a(this.a), "charge_money_failed", "alipay");
      return;
    case 2:
    }
    Toast.makeText(a.a(this.a), "检查结果为：" + paramMessage.obj, 0).show();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.pay.a.b
 * JD-Core Version:    0.6.2
 */