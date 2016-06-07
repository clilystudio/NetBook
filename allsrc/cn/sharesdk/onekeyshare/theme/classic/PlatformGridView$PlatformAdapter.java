package cn.sharesdk.onekeyshare.theme.classic;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import cn.sharesdk.framework.Platform;
import com.mob.tools.gui.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

class PlatformGridView$PlatformAdapter extends u
{
  private View.OnClickListener callback;
  private PlatformGridView.GridView[] girds;
  private int lines;
  private List<Object> logos;
  private PlatformGridView platformGridView;

  public PlatformGridView$PlatformAdapter(PlatformGridView paramPlatformGridView)
  {
    this.platformGridView = paramPlatformGridView;
    this.logos = new ArrayList();
    Platform[] arrayOfPlatform1 = PlatformGridView.access$000(paramPlatformGridView);
    HashMap localHashMap = PlatformGridView.access$100(paramPlatformGridView);
    Platform[] arrayOfPlatform3;
    if (arrayOfPlatform1 != null)
    {
      if ((localHashMap == null) || (localHashMap.size() <= 0))
        break label246;
      ArrayList localArrayList2 = new ArrayList();
      int m = arrayOfPlatform1.length;
      for (int n = 0; n < m; n++)
      {
        Platform localPlatform = arrayOfPlatform1[n];
        if (localHashMap.containsKey(localPlatform.getName()))
          continue;
        localArrayList2.add(localPlatform);
      }
      arrayOfPlatform3 = new Platform[localArrayList2.size()];
      for (int i1 = 0; i1 < arrayOfPlatform3.length; i1++)
        arrayOfPlatform3[i1] = ((Platform)localArrayList2.get(i1));
    }
    label246: for (Platform[] arrayOfPlatform2 = arrayOfPlatform3; ; arrayOfPlatform2 = arrayOfPlatform1)
    {
      this.logos.addAll(Arrays.asList(arrayOfPlatform2));
      ArrayList localArrayList1 = PlatformGridView.access$200(paramPlatformGridView);
      if (localArrayList1 != null)
        this.logos.addAll(localArrayList1);
      this.callback = paramPlatformGridView;
      this.girds = null;
      if (this.logos != null)
      {
        int i = this.logos.size();
        int j = PlatformGridView.access$300(paramPlatformGridView);
        int k = i / j;
        if (i % j > 0)
          k++;
        this.girds = new PlatformGridView.GridView[k];
      }
      return;
    }
  }

  public int getCount()
  {
    if (this.girds == null)
      return 0;
    return this.girds.length;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    if (this.girds[paramInt] == null)
    {
      int j = PlatformGridView.access$300(this.platformGridView);
      int k = j * paramInt;
      if (this.logos == null);
      Object[] arrayOfObject;
      for (int m = 0; ; m = this.logos.size())
      {
        if (k + j > m)
          j = m - k;
        arrayOfObject = new Object[j];
        while (i < j)
        {
          arrayOfObject[i] = this.logos.get(k + i);
          i++;
        }
      }
      if (paramInt == 0)
      {
        int n = PlatformGridView.access$400(this.platformGridView);
        this.lines = (arrayOfObject.length / n);
        if (arrayOfObject.length % n > 0)
          this.lines = (1 + this.lines);
      }
      this.girds[paramInt] = new PlatformGridView.GridView(this);
      this.girds[paramInt].setData(this.lines, arrayOfObject);
    }
    return this.girds[paramInt];
  }

  public void onScreenChange(int paramInt1, int paramInt2)
  {
    ImageView[] arrayOfImageView = PlatformGridView.access$500(this.platformGridView);
    for (int i = 0; i < arrayOfImageView.length; i++)
      arrayOfImageView[i].setImageBitmap(PlatformGridView.access$600(this.platformGridView));
    arrayOfImageView[paramInt1].setImageBitmap(PlatformGridView.access$700(this.platformGridView));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.PlatformGridView.PlatformAdapter
 * JD-Core Version:    0.6.0
 */