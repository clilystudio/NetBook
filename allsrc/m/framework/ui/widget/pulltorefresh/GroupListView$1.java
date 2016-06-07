package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;

class GroupListView$1 extends BaseAdapter
{
  private int[] getItemIndex(int paramInt)
  {
    int[] arrayOfInt = { -1, -2 };
    int i = this.val$adapter.getGroupCount();
    int j = 0;
    int k = 0;
    while (true)
    {
      if (j >= i)
        return arrayOfInt;
      int m = 1 + this.val$adapter.getChildrenCount(j);
      if (k + m > paramInt)
      {
        arrayOfInt[0] = j;
        arrayOfInt[1] = (-1 + (paramInt - k));
        return arrayOfInt;
      }
      k += m;
      j++;
    }
  }

  public int getCount()
  {
    int i = 0;
    int j = this.val$adapter.getGroupCount();
    int k = 0;
    while (true)
    {
      if (i >= j)
        return k;
      k += 1 + this.val$adapter.getChildrenCount(i);
      i++;
    }
  }

  public Object getItem(int paramInt)
  {
    int[] arrayOfInt = getItemIndex(paramInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    if (i >= 0)
    {
      if (j == -1)
        return this.val$adapter.getGroupTitle(j);
      if (j >= 0)
        return this.val$adapter.getChild(i, j);
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int[] arrayOfInt = getItemIndex(paramInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    GroupListView.ItemHolder localItemHolder1;
    if (paramView == null)
    {
      localItemHolder1 = new GroupListView.ItemHolder(null);
      localItemHolder1.llItem = new LinearLayout(paramViewGroup.getContext());
      localItemHolder1.llItem.setOrientation(1);
      localItemHolder1.llItem.setTag(localItemHolder1);
      if (i >= 0)
      {
        if (j == -1)
        {
          localItemHolder1.title = this.val$adapter.getGroupTitleView(i, localItemHolder1.title, localItemHolder1.llItem);
          localItemHolder1.llItem.addView(localItemHolder1.title);
        }
      }
      else
        paramView = localItemHolder1.llItem;
    }
    GroupListView.ItemHolder localItemHolder2;
    label238: 
    do
    {
      do
      {
        do
        {
          do
          {
            return paramView;
            if (j < 0)
              break;
            localItemHolder1.child = this.val$adapter.getChildView(i, j, localItemHolder1.child, localItemHolder1.llItem);
            localItemHolder1.llItem.addView(localItemHolder1.child);
            break;
            localItemHolder2 = (GroupListView.ItemHolder)paramView.getTag();
          }
          while (i < 0);
          if (j != -1)
            break label238;
          localItemHolder2.title = this.val$adapter.getGroupTitleView(i, localItemHolder2.title, localItemHolder2.llItem);
        }
        while (localItemHolder2.child == null);
        localItemHolder2.llItem.removeView(localItemHolder2.child);
        return paramView;
      }
      while (j < 0);
      localItemHolder2.child = this.val$adapter.getChildView(i, j, localItemHolder2.child, localItemHolder2.llItem);
    }
    while (localItemHolder2.title == null);
    localItemHolder2.llItem.removeView(localItemHolder2.title);
    return paramView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.GroupListView.1
 * JD-Core Version:    0.6.0
 */