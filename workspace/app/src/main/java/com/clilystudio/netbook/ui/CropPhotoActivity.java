package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.view.CropView;

public class CropPhotoActivity extends BaseActivity
{
  private CropView a;

  // ERROR //
  protected void onCreate(android.os.Bundle paramBundle)
  {
    v4 = 0x800;
    v2 = 0x45000000    # 2048.0f;
    com.clilystudio.netbook.ui/BaseActivity.onCreate(p0, p1);
    v0 = 0x7f030035;
    p0.setContentView(v0);
    v0 = "\u622a\u53d6\u5934\u50cf";
    v1 = "\u4f7f\u7528";
    v3 = new aY();
    v3.<init>(p0);
    p0.a(v0, v1, v3);
    v0 = p0.getIntent();
    v1 = v0.getData();
    v0 = 0x0;
    :try_start_0
    v3 = p0.getContentResolver();
    v1 = v3.openInputStream(v1);
    Landroid/graphics/BitmapFactory.decodeStream(v1);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    :goto_0
    v1 = v0.getHeight();
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_0
    }
    v1 = v0.getWidth();
    if (v1 < v4) {
		v1 = v0;
		goto :goto_2
	}
    :cond_0
    v1 = v0.getWidth();
    int-to-float v1, v1
    v3 = v0.getHeight();
    int-to-float v3, v3
    cmpl-float v4, v1, v3
    if (v4 <= 0) {
		v1 /= v3;
		v1 *= v2;
		v5 = v2;
		v2 = v1;
		v1 = v5;
    } else {
		v1 = v3 / v1;
		v1 *= v2;
	}
    float-to-int v2, v2
    float-to-int v1, v1
    v3 = 0x0;
    v0 = Landroid/graphics/Bitmap.createScaledBitmap(v0, v2, v1, v3);
    v1 = v0;
    :goto_2
    v0 = 0x7f0c00fe;
    v0 = p0.findViewById(v0);
    check-cast v0, com.clilystudio.netbook.view/CropView;
    p0.com.clilystudio.netbook.ui/CropPhotoActivity;->a = v0;
    v0 = p0.com.clilystudio.netbook.ui/CropPhotoActivity;->a;
    v0.setImageBitmap(v1);
    return;
    :catch_0
    move-exception v1
    :goto_3
    :try_start_1
    v1.printStackTrace();
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    throw v0
     :catch_1
    move-exception v1
    goto :goto_3
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.CropPhotoActivity
 * JD-Core Version:    0.6.0
 */