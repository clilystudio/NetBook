package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

public class ListInnerAdapter extends BaseAdapter
{
  private PullToRefreshBaseListAdapter adapter;

  public ListInnerAdapter(PullToRefreshBaseListAdapter paramPullToRefreshBaseListAdapter)
  {
    this.adapter = paramPullToRefreshBaseListAdapter;
  }

  public int getCount()
  {
    return this.adapter.getCount();
  }

  public Object getItem(int paramInt)
  {
    return this.adapter.getItem(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return this.adapter.getItemId(paramInt);
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.adapter.getView(paramInt, paramView, paramViewGroup);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.ListInnerAdapter
 * JD-Core Version:    0.6.0
 */