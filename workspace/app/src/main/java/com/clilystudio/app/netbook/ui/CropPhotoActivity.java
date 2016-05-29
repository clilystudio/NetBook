package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.view.CropView;

public class CropPhotoActivity extends BaseActivity {
    private CropView a;

    // ERROR //
    protected void onCreate(android.os.Bundle paramBundle) {
        // Byte code:
        //   0: ldc 89
        //   2: fstore_2
        //   3: aload_0
        //   4: aload_1
        //   5: invokespecial 91	com/ushaqi/zhuishushenqi/ui/BaseActivity:onCreate	(Landroid/os/Bundle;)V
        //   8: aload_0
        //   9: ldc 92
        //   11: invokevirtual 96	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:setContentView	(I)V
        //   14: aload_0
        //   15: ldc 98
        //   17: ldc 100
        //   19: new 102	com/ushaqi/zhuishushenqi/ui/aY
        //   22: dup
        //   23: aload_0
        //   24: invokespecial 104	com/ushaqi/zhuishushenqi/ui/aY:<init>	(Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;)V
        //   27: invokevirtual 107	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:a	(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V
        //   30: aload_0
        //   31: invokevirtual 39	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:getIntent	()Landroid/content/Intent;
        //   34: invokevirtual 111	android/content/Intent:getData	()Landroid/net/Uri;
        //   37: astore_3
        //   38: aload_0
        //   39: invokevirtual 115	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:getContentResolver	()Landroid/content/ContentResolver;
        //   42: aload_3
        //   43: invokevirtual 121	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
        //   46: invokestatic 127	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   49: astore 13
        //   51: aload 13
        //   53: astore 6
        //   55: aload 6
        //   57: invokevirtual 26	android/graphics/Bitmap:getHeight	()I
        //   60: sipush 2048
        //   63: if_icmpge +14 -> 77
        //   66: aload 6
        //   68: invokevirtual 29	android/graphics/Bitmap:getWidth	()I
        //   71: sipush 2048
        //   74: if_icmplt +112 -> 186
        //   77: aload 6
        //   79: invokevirtual 29	android/graphics/Bitmap:getWidth	()I
        //   82: i2f
        //   83: fstore 7
        //   85: aload 6
        //   87: invokevirtual 26	android/graphics/Bitmap:getHeight	()I
        //   90: i2f
        //   91: fstore 8
        //   93: fload 7
        //   95: fload 8
        //   97: fcmpl
        //   98: ifle +66 -> 164
        //   101: fload_2
        //   102: fload 8
        //   104: fload 7
        //   106: fdiv
        //   107: fmul
        //   108: fstore 11
        //   110: aload 6
        //   112: fload_2
        //   113: f2i
        //   114: fload 11
        //   116: f2i
        //   117: iconst_0
        //   118: invokestatic 33	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
        //   121: astore 12
        //   123: aload_0
        //   124: aload_0
        //   125: ldc 128
        //   127: invokevirtual 132	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:findViewById	(I)Landroid/view/View;
        //   130: checkcast 17	com/ushaqi/zhuishushenqi/view/CropView
        //   133: putfield 15	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:a	Lcom/ushaqi/zhuishushenqi/view/CropView;
        //   136: aload_0
        //   137: getfield 15	com/ushaqi/zhuishushenqi/ui/CropPhotoActivity:a	Lcom/ushaqi/zhuishushenqi/view/CropView;
        //   140: aload 12
        //   142: invokevirtual 136	com/ushaqi/zhuishushenqi/view/CropView:setImageBitmap	(Landroid/graphics/Bitmap;)V
        //   145: return
        //   146: astore 4
        //   148: aload 4
        //   150: invokevirtual 139	java/lang/Throwable:printStackTrace	()V
        //   153: aconst_null
        //   154: astore 6
        //   156: goto -101 -> 55
        //   159: astore 5
        //   161: aload 5
        //   163: athrow
        //   164: fload_2
        //   165: fload 7
        //   167: fload 8
        //   169: fdiv
        //   170: fmul
        //   171: fstore 9
        //   173: fload_2
        //   174: fstore 10
        //   176: fload 9
        //   178: fstore_2
        //   179: fload 10
        //   181: fstore 11
        //   183: goto -73 -> 110
        //   186: aload 6
        //   188: astore 12
        //   190: goto -67 -> 123
        //   193: astore 4
        //   195: goto -47 -> 148
        //
        // Exception table:
        //   from	to	target	type
        //   38	51	146	java/lang/OutOfMemoryError
        //   38	51	159	finally
        //   148	153	159	finally
        //   38	51	193	java/io/IOException
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.CropPhotoActivity
 * JD-Core Version:    0.6.2
 */