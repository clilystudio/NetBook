package com.ushaqi.zhuishushenqi.reader;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.adapter.u;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import java.util.LinkedList;

final class cf extends u<ChapterLink>
{
  private int a;
  private int b;
  private LayoutInflater c;

  public cf(ReaderTocDialog paramReaderTocDialog, LayoutInflater paramLayoutInflater)
  {
    this.a = a.b(paramReaderTocDialog.getActivity(), 2130771984, ReaderTocDialog.a(paramReaderTocDialog));
    this.b = a.b(paramReaderTocDialog.getActivity(), 2130771985, ReaderTocDialog.a(paramReaderTocDialog));
    this.c = paramLayoutInflater;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ChapterLink localChapterLink = (ChapterLink)getItem(paramInt);
    if (paramView == null);
    for (View localView = this.c.inflate(2130903311, paramViewGroup, false); ; localView = paramView)
    {
      if (localChapterLink == null)
        return localView;
      ImageView localImageView = (ImageView)localView.findViewById(2131493756);
      TextView localTextView = (TextView)localView.findViewById(2131493605);
      int i = ReaderTocDialog.a(this.d, paramInt);
      localTextView.setText(i + 1 + ". " + localChapterLink.getTitle());
      if (i == ReaderTocDialog.b(this.d).k())
      {
        localImageView.setImageLevel(1);
        localTextView.setTextColor(this.b);
        if (ReaderTocDialog.a(this.d, localChapterLink))
          break label219;
        localView.findViewById(2131493757).setVisibility(0);
      }
      while (true)
      {
        return localView;
        String str = localChapterLink.getLink();
        if ((ReaderTocDialog.c(this.d) != null) && (ReaderTocDialog.c(this.d).contains(str)))
          localImageView.setImageLevel(2);
        while (true)
        {
          localTextView.setTextColor(this.a);
          break;
          localImageView.setImageLevel(0);
        }
        label219: localView.findViewById(2131493757).setVisibility(8);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cf
 * JD-Core Version:    0.6.0
 */