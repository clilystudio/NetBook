package cn.sharesdk.onekeyshare.theme.skyblue;

import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo;
import cn.sharesdk.onekeyshare.PicViewer;

class EditPage$3
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    PicViewer localPicViewer = new PicViewer();
    localPicViewer.setImageBitmap(this.val$imageInfo.bitmap);
    localPicViewer.show(EditPage.access$200(this.this$0), null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.EditPage.3
 * JD-Core Version:    0.6.0
 */