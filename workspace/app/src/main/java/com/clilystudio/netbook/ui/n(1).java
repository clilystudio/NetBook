package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;

public final class n extends BaseAdapter
{
  private LayoutInflater b;

  public n(AudioBookPlayActivity paramAudioBookPlayActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  public final int getCount()
  {
    return AudioBookPlayActivity.i(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return AudioBookPlayActivity.i(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    p localp;
    if (paramView == null)
    {
      localp = new p(this.a);
      paramView = this.b.inflate(2130903150, null);
      localp.a = ((TextView)paramView.findViewById(2131493297));
      localp.b = ((TextView)paramView.findViewById(2131493299));
      localp.c = ((ImageView)paramView.findViewById(2131493298));
      paramView.setTag(localp);
      Track localTrack = (Track)AudioBookPlayActivity.i(this.a).get(paramInt);
      localp.a.setText(String.valueOf(paramInt + 1));
      localp.b.setText(localTrack.getTrackTitle());
      if (paramInt == AudioBookPlayActivity.k(this.a))
        break label169;
      localp.c.setImageResource(2130837589);
    }
    while (true)
    {
      paramView.setOnClickListener(new o(this, paramInt));
      return paramView;
      localp = (p)paramView.getTag();
      break;
      label169: if (as.c())
      {
        localp.c.setImageResource(2130837602);
        ((AnimationDrawable)localp.c.getDrawable()).start();
        continue;
      }
      localp.c.setImageResource(2130837603);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.n
 * JD-Core Version:    0.6.0
 */