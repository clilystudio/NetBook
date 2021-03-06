package com.ushaqi.zhuishushenqi.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.format.Formatter;
import android.widget.TextView;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.db.BookFile;
import com.ushaqi.zhuishushenqi.event.A;
import com.ushaqi.zhuishushenqi.event.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WifiActivity extends BaseActivity
{
  private List<BookFile> a = new ArrayList();
  private com.koushikdutta.async.http.server.a b;
  private TextView c;
  private TextView e;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903144);
    b("Wi-Fi传书");
    this.b = new com.koushikdutta.async.http.server.a();
    this.c = ((TextView)findViewById(2131493260));
    this.e = ((TextView)findViewById(2131493261));
    this.a.clear();
    List localList = com.arcsoft.hpay100.a.a.f();
    this.a.addAll(localList);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      BookFile localBookFile = (BookFile)localIterator.next();
      this.b.a("/files/" + localBookFile.getName(), new cm(this, localBookFile));
    }
  }

  public void onPause()
  {
    super.onPause();
    this.b.a();
  }

  public void onResume()
  {
    super.onResume();
    String[] arrayOfString1 = { null };
    String[] arrayOfString2 = { "wifi_transfer_v1", "wifi_transfer_v1/scripts" };
    int i = 0;
    while (true)
      if (i < 2)
        try
        {
          String str2 = arrayOfString2[i];
          for (String str3 : getAssets().list(str2))
          {
            String str4 = str2 + "/" + str3;
            boolean bool = "index.css".equals(str3);
            String str5 = null;
            if (bool)
              str5 = "text/css";
            this.b.a("/" + str4, new cn(this, str4, str5));
          }
          i++;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
    this.b.a("/", new co(this));
    this.b.a("/files", new cp(this));
    this.b.b("/send_file_name", new cq(this, arrayOfString1));
    this.b.b("/delete_file", new cr(this));
    this.b.b("/files", new cs(this, arrayOfString1));
    this.b.a(5000);
    if (com.arcsoft.hpay100.a.a.r(this) != 1)
    {
      this.c.setText("未连接到 Wi-Fi");
      this.e.setText("未连接");
    }
    WifiInfo localWifiInfo;
    do
    {
      return;
      this.c.setText("http://" + Formatter.formatIpAddress(((WifiManager)getSystemService("wifi")).getConnectionInfo().getIpAddress()) + ":5000");
      localWifiInfo = ((WifiManager)getSystemService("wifi")).getConnectionInfo();
    }
    while (localWifiInfo == null);
    String str1 = localWifiInfo.getSSID();
    if ((str1 != null) && (str1.length() >= 3) && (str1.contains("\"")))
      str1 = str1.substring(1, -1 + str1.length());
    this.e.setText(str1);
  }

  protected void onStop()
  {
    super.onStop();
    i.a().c(new A());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.WifiActivity
 * JD-Core Version:    0.6.0
 */