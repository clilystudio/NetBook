package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.GridView;

public class ScrollableGridView extends GridView
  implements Scrollable
{
  private OnScrollListener osListener;
  private boolean pullEnable;

  public ScrollableGridView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public ScrollableGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  public ScrollableGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }

  private void init(Context paramContext)
  {
    setCacheColorHint(0);
    setSelector(new ColorDrawable());
    this.osListener = new ScrollableGridView.1(this);
  }

  protected int computeVerticalScrollOffset()
  {
    int i = super.computeVerticalScrollOffset();
    if (this.osListener != null)
      this.osListener.onScrollChanged(this, 0, i, 0, 0);
    return i;
  }

  public boolean isReadyToPull()
  {
    return this.pullEnable;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.ScrollableGridView
 * JD-Core Version:    0.6.0
 */