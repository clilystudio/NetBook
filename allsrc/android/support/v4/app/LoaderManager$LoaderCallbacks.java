package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;

public abstract interface LoaderManager$LoaderCallbacks<D>
{
  public abstract Loader<D> onCreateLoader(int paramInt, Bundle paramBundle);

  public abstract void onLoadFinished(Loader<D> paramLoader, D paramD);

  public abstract void onLoaderReset(Loader<D> paramLoader);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.LoaderManager.LoaderCallbacks
 * JD-Core Version:    0.6.0
 */