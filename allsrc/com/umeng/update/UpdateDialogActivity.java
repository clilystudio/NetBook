package com.umeng.update;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import java.io.File;
import u.a.a;
import u.a.c;

public class UpdateDialogActivity extends Activity
{
  int a = 6;
  boolean b = false;
  private UpdateResponse c;
  private File d = null;

  protected void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    requestWindowFeature(i);
    setContentView(c.a(this).c("umeng_update_dialog"));
    this.c = ((UpdateResponse)getIntent().getExtras().getSerializable("response"));
    String str1 = getIntent().getExtras().getString("file");
    boolean bool = getIntent().getExtras().getBoolean("force");
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    l locall;
    m localm;
    if (str1 != null)
    {
      if (i != 0)
        this.d = new File(str1);
      k = c.a(this).a("umeng_update_content");
      m = c.a(this).a("umeng_update_wifi_indicator");
      n = c.a(this).a("umeng_update_id_ok");
      i1 = c.a(this).a("umeng_update_id_cancel");
      i2 = c.a(this).a("umeng_update_id_ignore");
      i3 = c.a(this).a("umeng_update_id_close");
      i4 = c.a(this).a("umeng_update_id_check");
      locall = new l(this, n, i2);
      localm = new m(this);
      if (m > 0)
        if (!a.c(this))
          break label338;
    }
    label338: for (int i5 = 8; ; i5 = 0)
    {
      findViewById(m).setVisibility(i5);
      if (bool)
        findViewById(i4).setVisibility(8);
      findViewById(n).setOnClickListener(locall);
      findViewById(i1).setOnClickListener(locall);
      findViewById(i2).setOnClickListener(locall);
      findViewById(i3).setOnClickListener(locall);
      ((CheckBox)findViewById(i4)).setOnCheckedChangeListener(localm);
      String str2 = this.c.a(this, i);
      TextView localTextView = (TextView)findViewById(k);
      localTextView.requestFocus();
      localTextView.setText(str2);
      return;
      int j = 0;
      break;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    b.a(this.a, this, this.c, this.d);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.UpdateDialogActivity
 * JD-Core Version:    0.6.0
 */