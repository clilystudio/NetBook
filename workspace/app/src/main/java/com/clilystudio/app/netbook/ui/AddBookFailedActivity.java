package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;

public class AddBookFailedActivity extends BaseActivity
{
  public static Intent a(Context paramContext, String paramString)
  {
    return new d().a(paramContext, AddBookFailedActivity.class).a("bookTitle", paramString).a();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    b(2131034288);
    String str = getIntent().getStringExtra("bookTitle");
    ((TextView)findViewById(2131493064)).setText("追书君正奔走在找《" + str + "》的路上，请耐心等待");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AddBookFailedActivity
 * JD-Core Version:    0.6.2
 */