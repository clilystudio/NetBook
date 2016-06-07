package uk.me.lewisdeane.ldialogs;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public final class d extends ArrayAdapter<String>
{
  private Context a;
  private int b;
  private ArrayList<String> c;
  private boolean d;

  public d(Context paramContext, int paramInt, ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    super(paramContext, paramInt, paramArrayList);
    this.a = paramContext;
    this.b = paramInt;
    this.c = paramArrayList;
    this.d = paramBoolean;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = LayoutInflater.from(getContext()).inflate(this.b, null);
    TextView localTextView = (TextView)paramView.findViewById(R.id.item_dialog_list_item);
    localTextView.setText((CharSequence)this.c.get(paramInt));
    localTextView.setGravity(19);
    if (!this.d)
    {
      localTextView.setTextColor(this.a.getResources().getColor(R.color.light_text_color));
      localTextView.setBackgroundResource(R.drawable.light_bg_confirm_btn);
    }
    while (true)
    {
      localTextView.setTypeface(e.a);
      return paramView;
      localTextView.setTextColor(this.a.getResources().getColor(R.color.dark_text_color));
      localTextView.setBackgroundResource(R.drawable.dark_bg_confirm_btn);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.d
 * JD-Core Version:    0.6.0
 */