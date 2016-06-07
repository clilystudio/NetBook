package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;

public abstract class AsyncTaskLoader<D> extends Loader<D>
{
  static final boolean DEBUG = false;
  static final String TAG = "AsyncTaskLoader";
  volatile AsyncTaskLoader<D>.LoadTask mCancellingTask;
  Handler mHandler;
  long mLastLoadCompleteTime = -10000L;
  volatile AsyncTaskLoader<D>.LoadTask mTask;
  long mUpdateThrottle;

  public AsyncTaskLoader(Context paramContext)
  {
    super(paramContext);
  }

  public boolean cancelLoad()
  {
    if (this.mTask != null)
    {
      if (this.mCancellingTask != null)
      {
        if (this.mTask.waiting)
        {
          this.mTask.waiting = false;
          this.mHandler.removeCallbacks(this.mTask);
        }
        this.mTask = null;
      }
    }
    else
      return false;
    if (this.mTask.waiting)
    {
      this.mTask.waiting = false;
      this.mHandler.removeCallbacks(this.mTask);
      this.mTask = null;
      return false;
    }
    boolean bool = this.mTask.cancel(false);
    if (bool)
      this.mCancellingTask = this.mTask;
    this.mTask = null;
    return bool;
  }

  void dispatchOnCancelled(AsyncTaskLoader<D>.LoadTask paramAsyncTaskLoader, D paramD)
  {
    onCanceled(paramD);
    if (this.mCancellingTask == paramAsyncTaskLoader)
    {
      rollbackContentChanged();
      this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
      this.mCancellingTask = null;
      executePendingTask();
    }
  }

  void dispatchOnLoadComplete(AsyncTaskLoader<D>.LoadTask paramAsyncTaskLoader, D paramD)
  {
    if (this.mTask != paramAsyncTaskLoader)
    {
      dispatchOnCancelled(paramAsyncTaskLoader, paramD);
      return;
    }
    if (isAbandoned())
    {
      onCanceled(paramD);
      return;
    }
    commitContentChanged();
    this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
    this.mTask = null;
    deliverResult(paramD);
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (this.mTask != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(this.mTask);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.mTask.waiting);
    }
    if (this.mCancellingTask != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(this.mCancellingTask);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.mCancellingTask.waiting);
    }
    if (this.mUpdateThrottle != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      TimeUtils.formatDuration(this.mUpdateThrottle, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      TimeUtils.formatDuration(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }

  void executePendingTask()
  {
    if ((this.mCancellingTask == null) && (this.mTask != null))
    {
      if (this.mTask.waiting)
      {
        this.mTask.waiting = false;
        this.mHandler.removeCallbacks(this.mTask);
      }
      if ((this.mUpdateThrottle > 0L) && (SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle))
      {
        this.mTask.waiting = true;
        this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
      }
    }
    else
    {
      return;
    }
    this.mTask.executeOnExecutor(ModernAsyncTask.THREAD_POOL_EXECUTOR, null);
  }

  public abstract D loadInBackground();

  public void onCanceled(D paramD)
  {
  }

  protected void onForceLoad()
  {
    super.onForceLoad();
    cancelLoad();
    this.mTask = new AsyncTaskLoader.LoadTask(this);
    executePendingTask();
  }

  protected D onLoadInBackground()
  {
    return loadInBackground();
  }

  public void setUpdateThrottle(long paramLong)
  {
    this.mUpdateThrottle = paramLong;
    if (paramLong != 0L)
      this.mHandler = new Handler();
  }

  public void waitForLoader()
  {
    AsyncTaskLoader.LoadTask localLoadTask = this.mTask;
    if (localLoadTask != null);
    try
    {
      AsyncTaskLoader.LoadTask.access$000(localLoadTask).await();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.content.AsyncTaskLoader
 * JD-Core Version:    0.6.0
 */