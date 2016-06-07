package uk.me.lewisdeane.ldialogs;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v7.app.f;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class CustomDialog extends AlertDialog
{
  private Context a;
  private View b;
  private View c;
  private View[] d = new View[4];
  private LinearLayout[] e = new LinearLayout[2];
  private String[] f = { "", "", "", "" };
  private Typeface g;
  private c h;
  private CustomDialog.Theme i = CustomDialog.Theme.LIGHT;
  private String j;
  private boolean k;

  public CustomDialog(h paramh)
  {
    super(paramh.a);
    this.a = paramh.a;
    boolean bool = paramh.c();
    this.k = f.j(this.a);
    if (Build.VERSION.SDK_INT <= 14)
      bool = false;
    int m;
    if (bool)
      m = R.layout.dialog_custom_highlight;
    while (true)
    {
      this.b = LayoutInflater.from(this.a).inflate(m, null);
      try
      {
        if (this.h == null)
          this.h = ((c)this.a);
        this.d[0] = this.b.findViewById(R.id.dialog_custom_title);
        this.d[1] = this.b.findViewById(R.id.dialog_custom_content);
        this.d[2] = this.b.findViewById(16908313);
        this.d[3] = this.b.findViewById(16908314);
        this.e[0] = ((LinearLayout)this.b.findViewById(R.id.dialog_custom_alongside_buttons));
        this.e[1] = ((LinearLayout)this.b.findViewById(R.id.dialog_custom_stacked_buttons));
        b();
        this.g = Typeface.createFromAsset(getContext().getResources().getAssets(), "Roboto-Medium.ttf");
        a();
        if (!this.k)
        {
          this.b.setBackgroundResource(R.color.light_window_bg);
          if ((this.d[0] instanceof TextView))
            ((TextView)this.d[0]).setTextColor(this.a.getResources().getColor(R.color.light_text_color));
          if ((this.d[1] instanceof TextView))
            ((TextView)this.d[1]).setTextColor(this.a.getResources().getColor(R.color.light_text_secondary));
          super.setView(this.b, 0, 0, 0, 0);
          if (!this.k)
            break label691;
          localTheme = CustomDialog.Theme.DARK;
          this.i = localTheme;
          c();
          String str1 = paramh.d;
          View[] arrayOfView1 = new View[1];
          arrayOfView1[0] = this.d[0];
          a(arrayOfView1, new String[] { str1 });
          String str2 = paramh.e;
          View[] arrayOfView2 = new View[1];
          arrayOfView2[0] = this.d[1];
          a(arrayOfView2, new String[] { str2 });
          String str3 = paramh.f;
          View[] arrayOfView3 = new View[1];
          arrayOfView3[0] = this.d[2];
          a(arrayOfView3, new String[] { str3 });
          b();
          String str4 = paramh.g;
          View[] arrayOfView4 = new View[1];
          arrayOfView4[0] = this.d[3];
          a(arrayOfView4, new String[] { str4 });
          b();
          a(paramh.h);
          setCancelable(paramh.d());
          return;
          m = R.layout.dialog_custom;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        while (true)
        {
          Log.w("L Dialogs", this.a.toString() + " should implement ClickListener or use CustomDialog.setClickListener(...)");
          continue;
          this.b.setBackgroundResource(R.color.dark_window_bg);
          if ((this.d[0] instanceof TextView))
            ((TextView)this.d[0]).setTextColor(this.a.getResources().getColor(R.color.dark_text_color));
          if (!(this.d[1] instanceof TextView))
            continue;
          ((TextView)this.d[1]).setTextColor(this.a.getResources().getColor(R.color.dark_text_secondary));
          continue;
          label691: CustomDialog.Theme localTheme = CustomDialog.Theme.LIGHT;
        }
      }
    }
  }

  private CustomDialog a(String paramString)
  {
    String str;
    if (this.i == CustomDialog.Theme.LIGHT)
      str = CustomDialog.LightColours.access$100(CustomDialog.LightColours.BUTTON);
    while (true)
    {
      this.j = str;
      try
      {
        this.j = paramString;
        return this;
        str = CustomDialog.DarkColours.access$200(CustomDialog.DarkColours.BUTTON);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return this;
  }

  private void a()
  {
    this.d[2].setOnClickListener(new a(this));
    this.d[3].setOnClickListener(new b(this));
  }

  private void a(View[] paramArrayOfView, String[] paramArrayOfString)
  {
    int m = 0;
    if (m < paramArrayOfView.length)
    {
      View localView = paramArrayOfView[m];
      int n = 0;
      label16: int i1;
      if (n < this.d.length)
        if (this.d[n] == localView)
        {
          i1 = n;
          label42: this.f[i1] = paramArrayOfString[m];
          if (!paramArrayOfString[m].equals(""))
            this.d[i1].setVisibility(0);
          if (i1 / 2 <= 0)
            break label135;
          Button localButton = (Button)this.d[i1];
          localButton.setText(this.f[i1].toUpperCase());
          localButton.setTypeface(this.g);
        }
      while (true)
      {
        m++;
        break;
        n++;
        break label16;
        i1 = 0;
        break label42;
        label135: TextView localTextView = (TextView)this.d[i1];
        localTextView.setText(this.f[i1]);
        localTextView.setTypeface(this.g);
      }
    }
    c();
  }

  private void b()
  {
    this.e[0].setVisibility(0);
    this.e[1].setVisibility(8);
    this.d[2] = this.b.findViewById(16908313);
    this.d[3] = this.b.findViewById(16908314);
    if (!this.k)
      if ((this.d[3] instanceof Button))
      {
        ((Button)this.d[3]).setTextColor(this.a.getResources().getColor(R.color.light_text_color));
        ((Button)this.d[2]).setBackgroundResource(R.drawable.light_bg_confirm_btn);
        ((Button)this.d[3]).setBackgroundResource(R.drawable.light_bg_confirm_btn);
      }
    while (true)
    {
      a(this.d, this.f);
      a();
      a(this.j);
      return;
      if (!(this.d[3] instanceof Button))
        continue;
      ((Button)this.d[3]).setTextColor(this.a.getResources().getColor(R.color.dark_text_color));
      ((Button)this.d[2]).setBackgroundResource(R.drawable.dark_bg_confirm_btn);
      ((Button)this.d[3]).setBackgroundResource(R.drawable.dark_bg_confirm_btn);
    }
  }

  private void c()
  {
    TextView localTextView = (TextView)this.d[1];
    if (this.i == CustomDialog.Theme.LIGHT);
    for (String str = CustomDialog.LightColours.access$100(CustomDialog.LightColours.CONTENT); ; str = CustomDialog.DarkColours.access$200(CustomDialog.DarkColours.CONTENT))
    {
      localTextView.setTextColor(Color.parseColor(str));
      return;
    }
  }

  public final CustomDialog a(View paramView)
  {
    if (this.c != null)
      ((ViewGroup)this.d[0].getParent()).removeView(this.c);
    this.c = paramView;
    ((ViewGroup)this.d[0].getParent()).addView(this.c, 2);
    return this;
  }

  public final CustomDialog a(c paramc)
  {
    this.h = paramc;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.CustomDialog
 * JD-Core Version:    0.6.0
 */