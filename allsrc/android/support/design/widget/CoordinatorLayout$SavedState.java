package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import android.view.View.BaseSavedState;

public class CoordinatorLayout$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new v();
  SparseArray<Parcelable> a;

  public CoordinatorLayout$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    int i = paramParcel.readInt();
    int[] arrayOfInt = new int[i];
    paramParcel.readIntArray(arrayOfInt);
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(CoordinatorLayout.class.getClassLoader());
    this.a = new SparseArray(i);
    for (int j = 0; j < i; j++)
      this.a.append(arrayOfInt[j], arrayOfParcelable[j]);
  }

  public CoordinatorLayout$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 0;
    super.writeToParcel(paramParcel, paramInt);
    if (this.a != null);
    int[] arrayOfInt;
    Parcelable[] arrayOfParcelable;
    for (int j = this.a.size(); ; j = 0)
    {
      paramParcel.writeInt(j);
      arrayOfInt = new int[j];
      arrayOfParcelable = new Parcelable[j];
      while (i < j)
      {
        arrayOfInt[i] = this.a.keyAt(i);
        arrayOfParcelable[i] = ((Parcelable)this.a.valueAt(i));
        i++;
      }
    }
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.SavedState
 * JD-Core Version:    0.6.0
 */