package cn.sharesdk.onekeyshare.theme.skyblue;

import android.widget.LinearLayout;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageListResultsCallback;
import java.util.ArrayList;
import java.util.Iterator;

class EditPage$2
  implements EditPageFakeActivity.ImageListResultsCallback
{
  public void onFinish(ArrayList<EditPageFakeActivity.ImageInfo> paramArrayList)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      LinearLayout localLinearLayout = (LinearLayout)this.this$0.findViewByResName("imagesLinearLayout");
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        EditPageFakeActivity.ImageInfo localImageInfo = (EditPageFakeActivity.ImageInfo)localIterator.next();
        if (localImageInfo.bitmap == null)
          continue;
        localLinearLayout.addView(EditPage.access$100(this.this$0, localImageInfo));
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.EditPage.2
 * JD-Core Version:    0.6.0
 */