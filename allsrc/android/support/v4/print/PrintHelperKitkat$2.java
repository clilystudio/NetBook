package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintDocumentInfo.Builder;

class PrintHelperKitkat$2 extends PrintDocumentAdapter
{
  private PrintAttributes mAttributes;
  Bitmap mBitmap = null;
  AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

  private void cancelLoad()
  {
    synchronized (PrintHelperKitkat.access$300(this.this$0))
    {
      if (this.this$0.mDecodeOptions != null)
      {
        this.this$0.mDecodeOptions.requestCancelDecode();
        this.this$0.mDecodeOptions = null;
      }
      return;
    }
  }

  public void onFinish()
  {
    super.onFinish();
    cancelLoad();
    if (this.mLoadBitmap != null)
      this.mLoadBitmap.cancel(true);
    if (this.val$callback != null)
      this.val$callback.onFinish();
  }

  public void onLayout(PrintAttributes paramPrintAttributes1, PrintAttributes paramPrintAttributes2, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle)
  {
    int i = 1;
    this.mAttributes = paramPrintAttributes2;
    if (paramCancellationSignal.isCanceled())
    {
      paramLayoutResultCallback.onLayoutCancelled();
      return;
    }
    if (this.mBitmap != null)
    {
      PrintDocumentInfo localPrintDocumentInfo = new PrintDocumentInfo.Builder(this.val$jobName).setContentType(i).setPageCount(i).build();
      if (!paramPrintAttributes2.equals(paramPrintAttributes1));
      while (true)
      {
        paramLayoutResultCallback.onLayoutFinished(localPrintDocumentInfo, i);
        return;
        int j = 0;
      }
    }
    this.mLoadBitmap = new PrintHelperKitkat.2.1(this, paramCancellationSignal, paramPrintAttributes2, paramPrintAttributes1, paramLayoutResultCallback).execute(new Uri[0]);
  }

  // ERROR //
  public void onWrite(android.print.PageRange[] paramArrayOfPageRange, android.os.ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
  {
    // Byte code:
    //   0: new 130	android/print/pdf/PrintedPdfDocument
    //   3: dup
    //   4: aload_0
    //   5: getfield 25	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
    //   8: getfield 134	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
    //   11: aload_0
    //   12: getfield 76	android/support/v4/print/PrintHelperKitkat$2:mAttributes	Landroid/print/PrintAttributes;
    //   15: invokespecial 137	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    //   18: astore 5
    //   20: aload 5
    //   22: iconst_1
    //   23: invokevirtual 141	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
    //   26: astore 8
    //   28: new 143	android/graphics/RectF
    //   31: dup
    //   32: aload 8
    //   34: invokevirtual 149	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
    //   37: invokevirtual 155	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
    //   40: invokespecial 158	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
    //   43: astore 9
    //   45: aload_0
    //   46: getfield 25	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
    //   49: aload_0
    //   50: getfield 38	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   53: invokevirtual 164	android/graphics/Bitmap:getWidth	()I
    //   56: aload_0
    //   57: getfield 38	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   60: invokevirtual 167	android/graphics/Bitmap:getHeight	()I
    //   63: aload 9
    //   65: aload_0
    //   66: getfield 33	android/support/v4/print/PrintHelperKitkat$2:val$fittingMode	I
    //   69: invokestatic 171	android/support/v4/print/PrintHelperKitkat:access$000	(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    //   72: astore 10
    //   74: aload 8
    //   76: invokevirtual 175	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
    //   79: aload_0
    //   80: getfield 38	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
    //   83: aload 10
    //   85: aconst_null
    //   86: invokevirtual 181	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    //   89: aload 5
    //   91: aload 8
    //   93: invokevirtual 185	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
    //   96: aload 5
    //   98: new 187	java/io/FileOutputStream
    //   101: dup
    //   102: aload_2
    //   103: invokevirtual 193	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   106: invokespecial 196	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   109: invokevirtual 200	android/print/pdf/PrintedPdfDocument:writeTo	(Ljava/io/OutputStream;)V
    //   112: iconst_1
    //   113: anewarray 202	android/print/PageRange
    //   116: astore 14
    //   118: aload 14
    //   120: iconst_0
    //   121: getstatic 206	android/print/PageRange:ALL_PAGES	Landroid/print/PageRange;
    //   124: aastore
    //   125: aload 4
    //   127: aload 14
    //   129: invokevirtual 212	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFinished	([Landroid/print/PageRange;)V
    //   132: aload 5
    //   134: invokevirtual 215	android/print/pdf/PrintedPdfDocument:close	()V
    //   137: aload_2
    //   138: ifnull +7 -> 145
    //   141: aload_2
    //   142: invokevirtual 216	android/os/ParcelFileDescriptor:close	()V
    //   145: return
    //   146: astore 11
    //   148: ldc 218
    //   150: ldc 220
    //   152: aload 11
    //   154: invokestatic 226	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   157: pop
    //   158: aload 4
    //   160: aconst_null
    //   161: invokevirtual 230	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFailed	(Ljava/lang/CharSequence;)V
    //   164: goto -32 -> 132
    //   167: astore 6
    //   169: aload 5
    //   171: invokevirtual 215	android/print/pdf/PrintedPdfDocument:close	()V
    //   174: aload_2
    //   175: ifnull +7 -> 182
    //   178: aload_2
    //   179: invokevirtual 216	android/os/ParcelFileDescriptor:close	()V
    //   182: aload 6
    //   184: athrow
    //   185: astore 13
    //   187: return
    //   188: astore 7
    //   190: goto -8 -> 182
    //
    // Exception table:
    //   from	to	target	type
    //   96	132	146	java/io/IOException
    //   20	96	167	finally
    //   96	132	167	finally
    //   148	164	167	finally
    //   141	145	185	java/io/IOException
    //   178	182	188	java/io/IOException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.print.PrintHelperKitkat.2
 * JD-Core Version:    0.6.0
 */