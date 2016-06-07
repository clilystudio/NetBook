package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;

public class CustomSearchActivity extends BaseActivity
{
  private EditText a;
  private EditText b;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903094);
    a(2131034288, 2131034282, new aZ(this));
    this.a = ((EditText)findViewById(2131493119));
    this.b = ((EditText)findViewById(2131493120));
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      String str1 = localIntent.getStringExtra("AddBookKey");
      if (str1 != null)
        this.a.setText(str1);
      String str2 = localIntent.getStringExtra("extra_author");
      this.b.setText(str2);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.CustomSearchActivity
 * JD-Core Version:    0.6.0
 */