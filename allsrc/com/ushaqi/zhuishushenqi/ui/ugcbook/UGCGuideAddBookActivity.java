package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import butterknife.ButterKnife;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.widget.SearchEditText;
import com.ushaqi.zhuishushenqi.widget.SearchFixListView;

public class UGCGuideAddBookActivity extends BaseActivity
  implements View.OnClickListener
{
  private InputMethodManager a;
  private String b;
  private SearchEditText c;
  private View e;
  private View f;
  private ListView g;
  private SearchFixListView h;
  private View i;
  private View j;
  private y k;
  private View l;
  private String m;
  private boolean n;

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.i.setVisibility(8);
      this.j.setVisibility(8);
      this.g.setVisibility(0);
      return;
    case 0:
      this.i.setVisibility(0);
      this.j.setVisibility(8);
      this.g.setVisibility(8);
      return;
    case 3:
      this.i.setVisibility(8);
      this.j.setVisibility(0);
      this.g.setVisibility(8);
      return;
    case 2:
    }
    this.i.setVisibility(8);
    this.j.setVisibility(8);
    this.g.setVisibility(8);
  }

  private void a(boolean paramBoolean)
  {
    this.h.setVisibility(8);
    this.b = this.c.getText().toString().trim();
    f();
    if (a.t(this))
    {
      a(0);
      if (paramBoolean)
      {
        w localw = new w(this, 0);
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = this.b;
        localw.b(arrayOfString1);
        return;
      }
      A localA = new A(this, 0);
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = this.b;
      localA.b(arrayOfString2);
      return;
    }
    e.a(this, 2131034418);
  }

  private void b()
  {
    this.l.setVisibility(0);
    getWindow().setSoftInputMode(21);
    this.c.requestFocus();
  }

  private void f()
  {
    this.l.setVisibility(8);
    this.c.clearFocus();
    if (this.a == null)
      this.a = ((InputMethodManager)getSystemService("input_method"));
    this.a.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
    getWindow().setSoftInputMode(2);
  }

  public void onBackPressed()
  {
    if (this.h.getVisibility() == 0);
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      this.h.setVisibility(8);
      return;
    }
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131493014:
    default:
      return;
    case 2131493016:
      a(true);
      f();
      this.n = false;
      return;
    case 2131493015:
      this.b = "";
      this.c.setTextByCode(this.b);
      b();
      return;
    case 2131493013:
    }
    f();
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903127);
    ButterKnife.inject(this);
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    View localView = localLayoutInflater.inflate(2130903042, null, false);
    localView.findViewById(2131493013).setOnClickListener(this);
    setCustomActionBar(localView);
    findViewById(2131493186).setVisibility(8);
    this.n = true;
    UGCGuideAddBookActivity.SearchPromptAdapter localSearchPromptAdapter = new UGCGuideAddBookActivity.SearchPromptAdapter(this);
    this.h = ((SearchFixListView)findViewById(2131493193));
    this.h.setAdapter(localSearchPromptAdapter);
    this.h.setOnItemClickListener(localSearchPromptAdapter);
    this.c = ((SearchEditText)localView.findViewById(2131493014));
    this.c.setOnUserInputListener(new s(this, localSearchPromptAdapter));
    this.e = localView.findViewById(2131493016);
    this.f = localView.findViewById(2131493015);
    this.i = findViewById(2131493085);
    this.j = findViewById(2131493184);
    this.l = findViewById(2131493183);
    findViewById(2131493982).setVisibility(8);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.e.setEnabled(false);
    this.g = ((ListView)findViewById(2131493185));
    this.k = new y(this, localLayoutInflater);
    this.g.setAdapter(this.k);
    if (paramBundle != null)
    {
      this.b = paramBundle.getString("saved_keyword");
      if (this.b != null)
        this.c.setTextByCode(this.b);
    }
    this.c.setOnEditorActionListener(new t(this));
    this.c.addTextChangedListener(new u(this));
    this.c.setOnFocusChangeListener(new v(this));
    b();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.b != null)
      paramBundle.putString("saved_keyword", this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.UGCGuideAddBookActivity
 * JD-Core Version:    0.6.0
 */