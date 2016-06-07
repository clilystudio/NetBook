package android.support.v4.content;

import java.util.concurrent.CountDownLatch;

final class AsyncTaskLoader$LoadTask extends ModernAsyncTask<Void, Void, D>
  implements Runnable
{
  private CountDownLatch done = new CountDownLatch(1);
  D result;
  boolean waiting;

  AsyncTaskLoader$LoadTask(AsyncTaskLoader paramAsyncTaskLoader)
  {
  }

  protected final D doInBackground(Void[] paramArrayOfVoid)
  {
    this.result = this.this$0.onLoadInBackground();
    return this.result;
  }

  protected final void onCancelled()
  {
    try
    {
      this.this$0.dispatchOnCancelled(this, this.result);
      return;
    }
    finally
    {
      this.done.countDown();
    }
    throw localObject;
  }

  protected final void onPostExecute(D paramD)
  {
    try
    {
      this.this$0.dispatchOnLoadComplete(this, paramD);
      return;
    }
    finally
    {
      this.done.countDown();
    }
    throw localObject;
  }

  public final void run()
  {
    this.waiting = false;
    this.this$0.executePendingTask();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.content.AsyncTaskLoader.LoadTask
 * JD-Core Version:    0.6.0
 */