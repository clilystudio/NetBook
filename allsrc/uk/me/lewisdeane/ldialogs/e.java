package uk.me.lewisdeane.ldialogs;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;

public final class e extends AlertDialog
{
  public static Typeface a;
  public static boolean b = false;
  private Context c;
  private String d = "";
  private ArrayList<String> e = new ArrayList();
  private TextView f;
  private ListView g;
  private d h;
  private g i;
  private boolean j;

  public e(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    super(paramContext);
    this.c = paramContext;
    this.d = paramString;
    a();
    this.e.clear();
    this.e.addAll(Arrays.asList(paramArrayOfString));
    if (this.h != null)
      this.h.notifyDataSetChanged();
    b = false;
    this.j = android.support.v7.app.f.j(this.c);
    a = Typeface.createFromAsset(getContext().getResources().getAssets(), "Roboto-Medium.ttf");
    View localView1 = LayoutInflater.from(this.c).inflate(R.layout.dialog_list_custom, null);
    this.f = ((TextView)localView1.findViewById(R.id.dialog_list_custom_title));
    this.g = ((ListView)localView1.findViewById(R.id.dialog_list_custom_list));
    View localView2 = localView1.findViewById(R.id.separate);
    this.h = new d(this.c, R.layout.item_dialog_list, this.e, this.j);
    this.g.setAdapter(this.h);
    a();
    this.g.setOnItemClickListener(new f(this));
    if (!this.j)
    {
      localView1.setBackgroundResource(R.color.light_window_bg);
      localView2.setBackgroundResource(R.color.light_line);
      this.g.setDivider(new ColorDrawable(R.color.light_line));
      this.f.setTextColor(this.c.getResources().getColor(R.color.light_action_bar_bg));
    }
    while (true)
    {
      super.setView(localView1, 0, 0, 0, 0);
      return;
      localView1.setBackgroundResource(R.color.dark_window_bg);
      localView2.setBackgroundResource(R.color.dark_line);
      this.g.setDivider(new ColorDrawable(R.color.dark_line));
      this.f.setTextColor(this.c.getResources().getColor(R.color.dark_action_bar_bg));
    }
  }

  private e a()
  {
    if (this.f != null)
    {
      this.f.setVisibility(0);
      if (this.d.length() > 0)
      {
        this.f.setText(this.d);
        this.f.setVisibility(0);
        this.f.setTypeface(a);
      }
    }
    return this;
  }

  public final e a(g paramg)
  {
    this.i = paramg;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.e
 * JD-Core Version:    0.6.0
 */