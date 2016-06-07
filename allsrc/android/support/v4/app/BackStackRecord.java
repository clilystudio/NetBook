package android.support.v4.app;

import android.os.Build.VERSION;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class BackStackRecord extends FragmentTransaction
  implements FragmentManager.BackStackEntry, Runnable
{
  static final int OP_ADD = 1;
  static final int OP_ATTACH = 7;
  static final int OP_DETACH = 6;
  static final int OP_HIDE = 4;
  static final int OP_NULL = 0;
  static final int OP_REMOVE = 3;
  static final int OP_REPLACE = 2;
  static final int OP_SHOW = 5;
  static final boolean SUPPORTS_TRANSITIONS = false;
  static final String TAG = "FragmentManager";
  boolean mAddToBackStack;
  boolean mAllowAddToBackStack = true;
  int mBreadCrumbShortTitleRes;
  CharSequence mBreadCrumbShortTitleText;
  int mBreadCrumbTitleRes;
  CharSequence mBreadCrumbTitleText;
  boolean mCommitted;
  int mEnterAnim;
  int mExitAnim;
  BackStackRecord.Op mHead;
  int mIndex = -1;
  final FragmentManagerImpl mManager;
  String mName;
  int mNumOp;
  int mPopEnterAnim;
  int mPopExitAnim;
  ArrayList<String> mSharedElementSourceNames;
  ArrayList<String> mSharedElementTargetNames;
  BackStackRecord.Op mTail;
  int mTransition;
  int mTransitionStyle;

  static
  {
    if (Build.VERSION.SDK_INT >= 21);
    for (boolean bool = true; ; bool = false)
    {
      SUPPORTS_TRANSITIONS = bool;
      return;
    }
  }

  public BackStackRecord(FragmentManagerImpl paramFragmentManagerImpl)
  {
    this.mManager = paramFragmentManagerImpl;
  }

  private BackStackRecord.TransitionState beginTransition(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, boolean paramBoolean)
  {
    BackStackRecord.TransitionState localTransitionState = new BackStackRecord.TransitionState(this);
    localTransitionState.nonExistentView = new View(this.mManager.mActivity);
    int i = 0;
    int j = 0;
    int k = paramSparseArray1.size();
    int m = 0;
    if (i < k)
      if (!configureTransitions(paramSparseArray1.keyAt(i), localTransitionState, paramBoolean, paramSparseArray1, paramSparseArray2))
        break label142;
    label142: for (int i1 = 1; ; i1 = j)
    {
      i++;
      j = i1;
      break;
      while (m < paramSparseArray2.size())
      {
        int n = paramSparseArray2.keyAt(m);
        if ((paramSparseArray1.get(n) == null) && (configureTransitions(n, localTransitionState, paramBoolean, paramSparseArray1, paramSparseArray2)))
          j = 1;
        m++;
      }
      if (j == 0)
        localTransitionState = null;
      return localTransitionState;
    }
  }

  private void calculateFragments(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.mManager.mContainer.hasView());
    BackStackRecord.Op localOp;
    do
    {
      return;
      localOp = this.mHead;
    }
    while (localOp == null);
    switch (localOp.cmd)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localOp = localOp.next;
      break;
      setLastIn(paramSparseArray2, localOp.fragment);
      continue;
      Fragment localFragment1 = localOp.fragment;
      Fragment localFragment2;
      if (this.mManager.mAdded != null)
      {
        localFragment2 = localFragment1;
        int i = 0;
        if (i < this.mManager.mAdded.size())
        {
          Fragment localFragment3 = (Fragment)this.mManager.mAdded.get(i);
          if ((localFragment2 == null) || (localFragment3.mContainerId == localFragment2.mContainerId))
          {
            if (localFragment3 != localFragment2)
              break label181;
            localFragment2 = null;
          }
          while (true)
          {
            i++;
            break;
            label181: setFirstOut(paramSparseArray1, localFragment3);
          }
        }
      }
      else
      {
        localFragment2 = localFragment1;
      }
      setLastIn(paramSparseArray2, localFragment2);
      continue;
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      setLastIn(paramSparseArray2, localOp.fragment);
      continue;
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      setLastIn(paramSparseArray2, localOp.fragment);
    }
  }

  private void callSharedElementEnd(BackStackRecord.TransitionState paramTransitionState, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, ArrayMap<String, View> paramArrayMap)
  {
    if (paramBoolean);
    for (SharedElementCallback localSharedElementCallback = paramFragment2.mEnterTransitionCallback; ; localSharedElementCallback = paramFragment1.mEnterTransitionCallback)
    {
      if (localSharedElementCallback != null)
        localSharedElementCallback.onSharedElementEnd(new ArrayList(paramArrayMap.keySet()), new ArrayList(paramArrayMap.values()), null);
      return;
    }
  }

  private static Object captureExitingViews(Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, ArrayMap<String, View> paramArrayMap, View paramView)
  {
    if (paramObject != null)
      paramObject = FragmentTransitionCompat21.captureExitingViews(paramObject, paramFragment.getView(), paramArrayList, paramArrayMap, paramView);
    return paramObject;
  }

  private boolean configureTransitions(int paramInt, BackStackRecord.TransitionState paramTransitionState, boolean paramBoolean, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    ViewGroup localViewGroup = (ViewGroup)this.mManager.mContainer.findViewById(paramInt);
    if (localViewGroup == null)
      return false;
    Fragment localFragment1 = (Fragment)paramSparseArray2.get(paramInt);
    Fragment localFragment2 = (Fragment)paramSparseArray1.get(paramInt);
    Object localObject1 = getEnterTransition(localFragment1, paramBoolean);
    Object localObject2 = getSharedElementTransition(localFragment1, localFragment2, paramBoolean);
    Object localObject3 = getExitTransition(localFragment2, paramBoolean);
    if ((localObject1 == null) && (localObject2 == null) && (localObject3 == null))
      return false;
    ArrayList localArrayList1 = new ArrayList();
    ArrayMap localArrayMap1 = null;
    SharedElementCallback localSharedElementCallback;
    if (localObject2 != null)
    {
      localArrayMap1 = remapSharedElements(paramTransitionState, localFragment2, paramBoolean);
      localArrayList1.add(paramTransitionState.nonExistentView);
      localArrayList1.addAll(localArrayMap1.values());
      if (!paramBoolean)
        break label449;
      localSharedElementCallback = localFragment2.mEnterTransitionCallback;
      if (localSharedElementCallback != null)
        localSharedElementCallback.onSharedElementStart(new ArrayList(localArrayMap1.keySet()), new ArrayList(localArrayMap1.values()), null);
    }
    ArrayList localArrayList2 = new ArrayList();
    Object localObject4 = captureExitingViews(localObject3, localFragment2, localArrayList2, localArrayMap1, paramTransitionState.nonExistentView);
    if ((this.mSharedElementTargetNames != null) && (localArrayMap1 != null))
    {
      View localView = (View)localArrayMap1.get(this.mSharedElementTargetNames.get(0));
      if (localView != null)
      {
        if (localObject4 != null)
          FragmentTransitionCompat21.setEpicenter(localObject4, localView);
        if (localObject2 != null)
          FragmentTransitionCompat21.setEpicenter(localObject2, localView);
      }
    }
    BackStackRecord.1 local1 = new BackStackRecord.1(this, localFragment1);
    if (localObject2 != null)
      prepareSharedElementTransition(paramTransitionState, localViewGroup, localObject2, localFragment1, localFragment2, paramBoolean, localArrayList1);
    ArrayList localArrayList3 = new ArrayList();
    ArrayMap localArrayMap2 = new ArrayMap();
    if (paramBoolean);
    for (boolean bool = localFragment1.getAllowReturnTransitionOverlap(); ; bool = localFragment1.getAllowEnterTransitionOverlap())
    {
      Object localObject5 = FragmentTransitionCompat21.mergeTransitions(localObject1, localObject4, localObject2, bool);
      if (localObject5 != null)
      {
        FragmentTransitionCompat21.addTransitionTargets(localObject1, localObject2, localViewGroup, local1, paramTransitionState.nonExistentView, paramTransitionState.enteringEpicenterView, paramTransitionState.nameOverrides, localArrayList3, localArrayMap2, localArrayList1);
        excludeHiddenFragmentsAfterEnter(localViewGroup, paramTransitionState, paramInt, localObject5);
        FragmentTransitionCompat21.excludeTarget(localObject5, paramTransitionState.nonExistentView, true);
        excludeHiddenFragments(paramTransitionState, paramInt, localObject5);
        FragmentTransitionCompat21.beginDelayedTransition(localViewGroup, localObject5);
        FragmentTransitionCompat21.cleanupTransitions(localViewGroup, paramTransitionState.nonExistentView, localObject1, localArrayList3, localObject4, localArrayList2, localObject2, localArrayList1, localObject5, paramTransitionState.hiddenFragmentViews, localArrayMap2);
      }
      if (localObject5 == null)
        break label469;
      return true;
      label449: localSharedElementCallback = localFragment1.mEnterTransitionCallback;
      break;
    }
    label469: return false;
  }

  private void doAddOp(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    paramFragment.mFragmentManager = this.mManager;
    if (paramString != null)
    {
      if ((paramFragment.mTag != null) && (!paramString.equals(paramFragment.mTag)))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.mTag + " now " + paramString);
      paramFragment.mTag = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((paramFragment.mFragmentId != 0) && (paramFragment.mFragmentId != paramInt1))
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.mFragmentId + " now " + paramInt1);
      paramFragment.mFragmentId = paramInt1;
      paramFragment.mContainerId = paramInt1;
    }
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = paramInt2;
    localOp.fragment = paramFragment;
    addOp(localOp);
  }

  private void excludeHiddenFragments(BackStackRecord.TransitionState paramTransitionState, int paramInt, Object paramObject)
  {
    if (this.mManager.mAdded != null)
    {
      int i = 0;
      if (i < this.mManager.mAdded.size())
      {
        Fragment localFragment = (Fragment)this.mManager.mAdded.get(i);
        if ((localFragment.mView != null) && (localFragment.mContainer != null) && (localFragment.mContainerId == paramInt))
        {
          if (!localFragment.mHidden)
            break label122;
          if (!paramTransitionState.hiddenFragmentViews.contains(localFragment.mView))
          {
            FragmentTransitionCompat21.excludeTarget(paramObject, localFragment.mView, true);
            paramTransitionState.hiddenFragmentViews.add(localFragment.mView);
          }
        }
        while (true)
        {
          i++;
          break;
          label122: FragmentTransitionCompat21.excludeTarget(paramObject, localFragment.mView, false);
          paramTransitionState.hiddenFragmentViews.remove(localFragment.mView);
        }
      }
    }
  }

  private void excludeHiddenFragmentsAfterEnter(View paramView, BackStackRecord.TransitionState paramTransitionState, int paramInt, Object paramObject)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new BackStackRecord.3(this, paramView, paramTransitionState, paramInt, paramObject));
  }

  private static Object getEnterTransition(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null)
      return null;
    if (paramBoolean);
    for (Object localObject = paramFragment.getReenterTransition(); ; localObject = paramFragment.getEnterTransition())
      return FragmentTransitionCompat21.cloneTransition(localObject);
  }

  private static Object getExitTransition(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null)
      return null;
    if (paramBoolean);
    for (Object localObject = paramFragment.getReturnTransition(); ; localObject = paramFragment.getExitTransition())
      return FragmentTransitionCompat21.cloneTransition(localObject);
  }

  private static Object getSharedElementTransition(Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean)
  {
    if ((paramFragment1 == null) || (paramFragment2 == null))
      return null;
    if (paramBoolean);
    for (Object localObject = paramFragment2.getSharedElementReturnTransition(); ; localObject = paramFragment1.getSharedElementEnterTransition())
      return FragmentTransitionCompat21.cloneTransition(localObject);
  }

  private ArrayMap<String, View> mapEnteringSharedElements(BackStackRecord.TransitionState paramTransitionState, Fragment paramFragment, boolean paramBoolean)
  {
    ArrayMap localArrayMap = new ArrayMap();
    View localView = paramFragment.getView();
    if ((localView != null) && (this.mSharedElementSourceNames != null))
    {
      FragmentTransitionCompat21.findNamedViews(localArrayMap, localView);
      if (paramBoolean)
        localArrayMap = remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, localArrayMap);
    }
    else
    {
      return localArrayMap;
    }
    localArrayMap.retainAll(this.mSharedElementTargetNames);
    return localArrayMap;
  }

  private ArrayMap<String, View> mapSharedElementsIn(BackStackRecord.TransitionState paramTransitionState, boolean paramBoolean, Fragment paramFragment)
  {
    ArrayMap localArrayMap = mapEnteringSharedElements(paramTransitionState, paramFragment, paramBoolean);
    if (paramBoolean)
    {
      if (paramFragment.mExitTransitionCallback != null)
        paramFragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, localArrayMap);
      setBackNameOverrides(paramTransitionState, localArrayMap, true);
      return localArrayMap;
    }
    if (paramFragment.mEnterTransitionCallback != null)
      paramFragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, localArrayMap);
    setNameOverrides(paramTransitionState, localArrayMap, true);
    return localArrayMap;
  }

  private void prepareSharedElementTransition(BackStackRecord.TransitionState paramTransitionState, View paramView, Object paramObject, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, ArrayList<View> paramArrayList)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new BackStackRecord.2(this, paramView, paramObject, paramArrayList, paramTransitionState, paramBoolean, paramFragment1, paramFragment2));
  }

  private static ArrayMap<String, View> remapNames(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayMap<String, View> paramArrayMap)
  {
    if (paramArrayMap.isEmpty())
      return paramArrayMap;
    ArrayMap localArrayMap = new ArrayMap();
    int i = paramArrayList1.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)paramArrayMap.get(paramArrayList1.get(j));
      if (localView == null)
        continue;
      localArrayMap.put(paramArrayList2.get(j), localView);
    }
    return localArrayMap;
  }

  private ArrayMap<String, View> remapSharedElements(BackStackRecord.TransitionState paramTransitionState, Fragment paramFragment, boolean paramBoolean)
  {
    ArrayMap localArrayMap = new ArrayMap();
    if (this.mSharedElementSourceNames != null)
    {
      FragmentTransitionCompat21.findNamedViews(localArrayMap, paramFragment.getView());
      if (!paramBoolean)
        break label74;
      localArrayMap.retainAll(this.mSharedElementTargetNames);
    }
    while (paramBoolean)
    {
      if (paramFragment.mEnterTransitionCallback != null)
        paramFragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, localArrayMap);
      setBackNameOverrides(paramTransitionState, localArrayMap, false);
      return localArrayMap;
      label74: localArrayMap = remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, localArrayMap);
    }
    if (paramFragment.mExitTransitionCallback != null)
      paramFragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, localArrayMap);
    setNameOverrides(paramTransitionState, localArrayMap, false);
    return localArrayMap;
  }

  private void setBackNameOverrides(BackStackRecord.TransitionState paramTransitionState, ArrayMap<String, View> paramArrayMap, boolean paramBoolean)
  {
    int i;
    int j;
    label13: String str1;
    String str2;
    if (this.mSharedElementTargetNames == null)
    {
      i = 0;
      j = 0;
      if (j >= i)
        return;
      str1 = (String)this.mSharedElementSourceNames.get(j);
      View localView = (View)paramArrayMap.get((String)this.mSharedElementTargetNames.get(j));
      if (localView != null)
      {
        str2 = FragmentTransitionCompat21.getTransitionName(localView);
        if (!paramBoolean)
          break label100;
        setNameOverride(paramTransitionState.nameOverrides, str1, str2);
      }
    }
    while (true)
    {
      j++;
      break label13;
      i = this.mSharedElementTargetNames.size();
      break;
      label100: setNameOverride(paramTransitionState.nameOverrides, str2, str1);
    }
  }

  private void setEpicenterIn(ArrayMap<String, View> paramArrayMap, BackStackRecord.TransitionState paramTransitionState)
  {
    if ((this.mSharedElementTargetNames != null) && (!paramArrayMap.isEmpty()))
    {
      View localView = (View)paramArrayMap.get(this.mSharedElementTargetNames.get(0));
      if (localView != null)
        paramTransitionState.enteringEpicenterView.epicenter = localView;
    }
  }

  private static void setFirstOut(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i = paramFragment.mContainerId;
      if ((i != 0) && (!paramFragment.isHidden()) && (paramFragment.isAdded()) && (paramFragment.getView() != null) && (paramSparseArray.get(i) == null))
        paramSparseArray.put(i, paramFragment);
    }
  }

  private void setLastIn(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i = paramFragment.mContainerId;
      if (i != 0)
        paramSparseArray.put(i, paramFragment);
    }
  }

  private static void setNameOverride(ArrayMap<String, String> paramArrayMap, String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (!paramString1.equals(paramString2)));
    for (int i = 0; i < paramArrayMap.size(); i++)
    {
      if (!paramString1.equals(paramArrayMap.valueAt(i)))
        continue;
      paramArrayMap.setValueAt(i, paramString2);
      return;
    }
    paramArrayMap.put(paramString1, paramString2);
  }

  private void setNameOverrides(BackStackRecord.TransitionState paramTransitionState, ArrayMap<String, View> paramArrayMap, boolean paramBoolean)
  {
    int i = paramArrayMap.size();
    int j = 0;
    if (j < i)
    {
      String str1 = (String)paramArrayMap.keyAt(j);
      String str2 = FragmentTransitionCompat21.getTransitionName((View)paramArrayMap.valueAt(j));
      if (paramBoolean)
        setNameOverride(paramTransitionState.nameOverrides, str1, str2);
      while (true)
      {
        j++;
        break;
        setNameOverride(paramTransitionState.nameOverrides, str2, str1);
      }
    }
  }

  private static void setNameOverrides(BackStackRecord.TransitionState paramTransitionState, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
      for (int i = 0; i < paramArrayList1.size(); i++)
      {
        String str1 = (String)paramArrayList1.get(i);
        String str2 = (String)paramArrayList2.get(i);
        setNameOverride(paramTransitionState.nameOverrides, str1, str2);
      }
  }

  public final FragmentTransaction add(int paramInt, Fragment paramFragment)
  {
    doAddOp(paramInt, paramFragment, null, 1);
    return this;
  }

  public final FragmentTransaction add(int paramInt, Fragment paramFragment, String paramString)
  {
    doAddOp(paramInt, paramFragment, paramString, 1);
    return this;
  }

  public final FragmentTransaction add(Fragment paramFragment, String paramString)
  {
    doAddOp(0, paramFragment, paramString, 1);
    return this;
  }

  final void addOp(BackStackRecord.Op paramOp)
  {
    if (this.mHead == null)
    {
      this.mTail = paramOp;
      this.mHead = paramOp;
    }
    while (true)
    {
      paramOp.enterAnim = this.mEnterAnim;
      paramOp.exitAnim = this.mExitAnim;
      paramOp.popEnterAnim = this.mPopEnterAnim;
      paramOp.popExitAnim = this.mPopExitAnim;
      this.mNumOp = (1 + this.mNumOp);
      return;
      paramOp.prev = this.mTail;
      this.mTail.next = paramOp;
      this.mTail = paramOp;
    }
  }

  public final FragmentTransaction addSharedElement(View paramView, String paramString)
  {
    if (SUPPORTS_TRANSITIONS)
    {
      String str = FragmentTransitionCompat21.getTransitionName(paramView);
      if (str == null)
        throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
      if (this.mSharedElementSourceNames == null)
      {
        this.mSharedElementSourceNames = new ArrayList();
        this.mSharedElementTargetNames = new ArrayList();
      }
      this.mSharedElementSourceNames.add(str);
      this.mSharedElementTargetNames.add(paramString);
    }
    return this;
  }

  public final FragmentTransaction addToBackStack(String paramString)
  {
    if (!this.mAllowAddToBackStack)
      throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    this.mAddToBackStack = true;
    this.mName = paramString;
    return this;
  }

  public final FragmentTransaction attach(Fragment paramFragment)
  {
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = 7;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  final void bumpBackStackNesting(int paramInt)
  {
    if (!this.mAddToBackStack);
    while (true)
    {
      return;
      if (FragmentManagerImpl.DEBUG)
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      for (BackStackRecord.Op localOp = this.mHead; localOp != null; localOp = localOp.next)
      {
        if (localOp.fragment != null)
        {
          Fragment localFragment2 = localOp.fragment;
          localFragment2.mBackStackNesting = (paramInt + localFragment2.mBackStackNesting);
          if (FragmentManagerImpl.DEBUG)
            Log.v("FragmentManager", "Bump nesting of " + localOp.fragment + " to " + localOp.fragment.mBackStackNesting);
        }
        if (localOp.removed == null)
          continue;
        for (int i = -1 + localOp.removed.size(); i >= 0; i--)
        {
          Fragment localFragment1 = (Fragment)localOp.removed.get(i);
          localFragment1.mBackStackNesting = (paramInt + localFragment1.mBackStackNesting);
          if (!FragmentManagerImpl.DEBUG)
            continue;
          Log.v("FragmentManager", "Bump nesting of " + localFragment1 + " to " + localFragment1.mBackStackNesting);
        }
      }
    }
  }

  public final void calculateBackFragments(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.mManager.mContainer.hasView());
    BackStackRecord.Op localOp;
    do
    {
      return;
      localOp = this.mHead;
    }
    while (localOp == null);
    switch (localOp.cmd)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localOp = localOp.next;
      break;
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      if (localOp.removed != null)
        for (int i = -1 + localOp.removed.size(); i >= 0; i--)
          setLastIn(paramSparseArray2, (Fragment)localOp.removed.get(i));
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      setLastIn(paramSparseArray2, localOp.fragment);
      continue;
      setLastIn(paramSparseArray2, localOp.fragment);
      continue;
      setFirstOut(paramSparseArray1, localOp.fragment);
      continue;
      setLastIn(paramSparseArray2, localOp.fragment);
      continue;
      setFirstOut(paramSparseArray1, localOp.fragment);
    }
  }

  public final int commit()
  {
    return commitInternal(false);
  }

  public final int commitAllowingStateLoss()
  {
    return commitInternal(true);
  }

  final int commitInternal(boolean paramBoolean)
  {
    if (this.mCommitted)
      throw new IllegalStateException("commit already called");
    if (FragmentManagerImpl.DEBUG)
    {
      Log.v("FragmentManager", "Commit: " + this);
      dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
    }
    this.mCommitted = true;
    if (this.mAddToBackStack);
    for (this.mIndex = this.mManager.allocBackStackIndex(this); ; this.mIndex = -1)
    {
      this.mManager.enqueueAction(this, paramBoolean);
      return this.mIndex;
    }
  }

  public final FragmentTransaction detach(Fragment paramFragment)
  {
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = 6;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public final FragmentTransaction disallowAddToBackStack()
  {
    if (this.mAddToBackStack)
      throw new IllegalStateException("This transaction is already being added to the back stack");
    this.mAllowAddToBackStack = false;
    return this;
  }

  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    dump(paramString, paramPrintWriter, true);
  }

  public final void dump(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.mName);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.mIndex);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.mCommitted);
      if (this.mTransition != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.mTransition));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.mTransitionStyle));
      }
      if ((this.mEnterAnim != 0) || (this.mExitAnim != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.mEnterAnim));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.mExitAnim));
      }
      if ((this.mPopEnterAnim != 0) || (this.mPopExitAnim != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.mPopEnterAnim));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.mPopExitAnim));
      }
      if ((this.mBreadCrumbTitleRes != 0) || (this.mBreadCrumbTitleText != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.mBreadCrumbTitleText);
      }
      if ((this.mBreadCrumbShortTitleRes != 0) || (this.mBreadCrumbShortTitleText != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.mBreadCrumbShortTitleText);
      }
    }
    if (this.mHead != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str1 = paramString + "    ";
      BackStackRecord.Op localOp1 = this.mHead;
      int i = 0;
      BackStackRecord.Op localOp2 = localOp1;
      while (localOp2 != null)
      {
        String str2;
        int j;
        switch (localOp2.cmd)
        {
        default:
          str2 = "cmd=" + localOp2.cmd;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str2);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(localOp2.fragment);
          if (paramBoolean)
          {
            if ((localOp2.enterAnim != 0) || (localOp2.exitAnim != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localOp2.enterAnim));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localOp2.exitAnim));
            }
            if ((localOp2.popEnterAnim != 0) || (localOp2.popExitAnim != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localOp2.popEnterAnim));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localOp2.popExitAnim));
            }
          }
          if ((localOp2.removed == null) || (localOp2.removed.size() <= 0))
            break label805;
          j = 0;
          label642: if (j >= localOp2.removed.size())
            break label805;
          paramPrintWriter.print(str1);
          if (localOp2.removed.size() != 1)
            break;
          paramPrintWriter.print("Removed: ");
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (true)
        {
          paramPrintWriter.println(localOp2.removed.get(j));
          j++;
          break label642;
          str2 = "NULL";
          break;
          str2 = "ADD";
          break;
          str2 = "REPLACE";
          break;
          str2 = "REMOVE";
          break;
          str2 = "HIDE";
          break;
          str2 = "SHOW";
          break;
          str2 = "DETACH";
          break;
          str2 = "ATTACH";
          break;
          if (j == 0)
            paramPrintWriter.println("Removed:");
          paramPrintWriter.print(str1);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(j);
          paramPrintWriter.print(": ");
        }
        label805: localOp2 = localOp2.next;
        i++;
      }
    }
  }

  public final CharSequence getBreadCrumbShortTitle()
  {
    if (this.mBreadCrumbShortTitleRes != 0)
      return this.mManager.mActivity.getText(this.mBreadCrumbShortTitleRes);
    return this.mBreadCrumbShortTitleText;
  }

  public final int getBreadCrumbShortTitleRes()
  {
    return this.mBreadCrumbShortTitleRes;
  }

  public final CharSequence getBreadCrumbTitle()
  {
    if (this.mBreadCrumbTitleRes != 0)
      return this.mManager.mActivity.getText(this.mBreadCrumbTitleRes);
    return this.mBreadCrumbTitleText;
  }

  public final int getBreadCrumbTitleRes()
  {
    return this.mBreadCrumbTitleRes;
  }

  public final int getId()
  {
    return this.mIndex;
  }

  public final String getName()
  {
    return this.mName;
  }

  public final int getTransition()
  {
    return this.mTransition;
  }

  public final int getTransitionStyle()
  {
    return this.mTransitionStyle;
  }

  public final FragmentTransaction hide(Fragment paramFragment)
  {
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = 4;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public final boolean isAddToBackStackAllowed()
  {
    return this.mAllowAddToBackStack;
  }

  public final boolean isEmpty()
  {
    return this.mNumOp == 0;
  }

  public final BackStackRecord.TransitionState popFromBackStack(boolean paramBoolean, BackStackRecord.TransitionState paramTransitionState, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (FragmentManagerImpl.DEBUG)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
    }
    if (SUPPORTS_TRANSITIONS)
    {
      if (paramTransitionState != null)
        break label209;
      if ((paramSparseArray1.size() != 0) || (paramSparseArray2.size() != 0))
        paramTransitionState = beginTransition(paramSparseArray1, paramSparseArray2, true);
    }
    label88: bumpBackStackNesting(-1);
    int i;
    label100: int j;
    label107: BackStackRecord.Op localOp;
    int k;
    if (paramTransitionState != null)
    {
      i = 0;
      if (paramTransitionState == null)
        break label237;
      j = 0;
      localOp = this.mTail;
      if (localOp == null)
        break label562;
      if (paramTransitionState == null)
        break label246;
      k = 0;
      label125: if (paramTransitionState == null)
        break label256;
    }
    label256: for (int m = 0; ; m = localOp.popExitAnim)
      switch (localOp.cmd)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localOp.cmd);
        label209: if (paramBoolean)
          break label88;
        setNameOverrides(paramTransitionState, this.mSharedElementTargetNames, this.mSharedElementSourceNames);
        break label88;
        i = this.mTransitionStyle;
        break label100;
        label237: j = this.mTransition;
        break label107;
        label246: k = localOp.popEnterAnim;
        break label125;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
    Fragment localFragment8 = localOp.fragment;
    localFragment8.mNextAnim = m;
    this.mManager.removeFragment(localFragment8, FragmentManagerImpl.reverseTransit(j), i);
    while (true)
    {
      localOp = localOp.prev;
      break;
      Fragment localFragment6 = localOp.fragment;
      if (localFragment6 != null)
      {
        localFragment6.mNextAnim = m;
        this.mManager.removeFragment(localFragment6, FragmentManagerImpl.reverseTransit(j), i);
      }
      if (localOp.removed == null)
        continue;
      for (int n = 0; n < localOp.removed.size(); n++)
      {
        Fragment localFragment7 = (Fragment)localOp.removed.get(n);
        localFragment7.mNextAnim = k;
        this.mManager.addFragment(localFragment7, false);
      }
      Fragment localFragment5 = localOp.fragment;
      localFragment5.mNextAnim = k;
      this.mManager.addFragment(localFragment5, false);
      continue;
      Fragment localFragment4 = localOp.fragment;
      localFragment4.mNextAnim = k;
      this.mManager.showFragment(localFragment4, FragmentManagerImpl.reverseTransit(j), i);
      continue;
      Fragment localFragment3 = localOp.fragment;
      localFragment3.mNextAnim = m;
      this.mManager.hideFragment(localFragment3, FragmentManagerImpl.reverseTransit(j), i);
      continue;
      Fragment localFragment2 = localOp.fragment;
      localFragment2.mNextAnim = k;
      this.mManager.attachFragment(localFragment2, FragmentManagerImpl.reverseTransit(j), i);
      continue;
      Fragment localFragment1 = localOp.fragment;
      localFragment1.mNextAnim = k;
      this.mManager.detachFragment(localFragment1, FragmentManagerImpl.reverseTransit(j), i);
    }
    label562: if (paramBoolean)
    {
      this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(j), i, true);
      paramTransitionState = null;
    }
    if (this.mIndex >= 0)
    {
      this.mManager.freeBackStackIndex(this.mIndex);
      this.mIndex = -1;
    }
    return paramTransitionState;
  }

  public final FragmentTransaction remove(Fragment paramFragment)
  {
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = 3;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public final FragmentTransaction replace(int paramInt, Fragment paramFragment)
  {
    return replace(paramInt, paramFragment, null);
  }

  public final FragmentTransaction replace(int paramInt, Fragment paramFragment, String paramString)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    doAddOp(paramInt, paramFragment, paramString, 2);
    return this;
  }

  public final void run()
  {
    if (FragmentManagerImpl.DEBUG)
      Log.v("FragmentManager", "Run: " + this);
    if ((this.mAddToBackStack) && (this.mIndex < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    bumpBackStackNesting(1);
    SparseArray localSparseArray1;
    SparseArray localSparseArray2;
    if (SUPPORTS_TRANSITIONS)
    {
      localSparseArray1 = new SparseArray();
      localSparseArray2 = new SparseArray();
      calculateFragments(localSparseArray1, localSparseArray2);
    }
    for (BackStackRecord.TransitionState localTransitionState = beginTransition(localSparseArray1, localSparseArray2, false); ; localTransitionState = null)
    {
      int i;
      label102: int j;
      label109: BackStackRecord.Op localOp;
      int k;
      if (localTransitionState != null)
      {
        i = 0;
        if (localTransitionState == null)
          break label218;
        j = 0;
        localOp = this.mHead;
        if (localOp == null)
          break label714;
        if (localTransitionState == null)
          break label227;
        k = 0;
        label127: if (localTransitionState == null)
          break label237;
      }
      label218: label227: label237: for (int m = 0; ; m = localOp.exitAnim)
        switch (localOp.cmd)
        {
        default:
          throw new IllegalArgumentException("Unknown cmd: " + localOp.cmd);
          i = this.mTransitionStyle;
          break label102;
          j = this.mTransition;
          break label109;
          k = localOp.enterAnim;
          break label127;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
      Fragment localFragment9 = localOp.fragment;
      localFragment9.mNextAnim = k;
      this.mManager.addFragment(localFragment9, false);
      while (true)
      {
        localOp = localOp.next;
        break;
        Fragment localFragment6 = localOp.fragment;
        Fragment localFragment7;
        if (this.mManager.mAdded != null)
        {
          int n = 0;
          localFragment7 = localFragment6;
          if (n < this.mManager.mAdded.size())
          {
            Fragment localFragment8 = (Fragment)this.mManager.mAdded.get(n);
            if (FragmentManagerImpl.DEBUG)
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localFragment7 + " old=" + localFragment8);
            if ((localFragment7 == null) || (localFragment8.mContainerId == localFragment7.mContainerId))
            {
              if (localFragment8 != localFragment7)
                break label418;
              localOp.fragment = null;
              localFragment7 = null;
            }
            while (true)
            {
              n++;
              break;
              label418: if (localOp.removed == null)
                localOp.removed = new ArrayList();
              localOp.removed.add(localFragment8);
              localFragment8.mNextAnim = m;
              if (this.mAddToBackStack)
              {
                localFragment8.mBackStackNesting = (1 + localFragment8.mBackStackNesting);
                if (FragmentManagerImpl.DEBUG)
                  Log.v("FragmentManager", "Bump nesting of " + localFragment8 + " to " + localFragment8.mBackStackNesting);
              }
              this.mManager.removeFragment(localFragment8, j, i);
            }
          }
        }
        else
        {
          localFragment7 = localFragment6;
        }
        if (localFragment7 == null)
          continue;
        localFragment7.mNextAnim = k;
        this.mManager.addFragment(localFragment7, false);
        continue;
        Fragment localFragment5 = localOp.fragment;
        localFragment5.mNextAnim = m;
        this.mManager.removeFragment(localFragment5, j, i);
        continue;
        Fragment localFragment4 = localOp.fragment;
        localFragment4.mNextAnim = m;
        this.mManager.hideFragment(localFragment4, j, i);
        continue;
        Fragment localFragment3 = localOp.fragment;
        localFragment3.mNextAnim = k;
        this.mManager.showFragment(localFragment3, j, i);
        continue;
        Fragment localFragment2 = localOp.fragment;
        localFragment2.mNextAnim = m;
        this.mManager.detachFragment(localFragment2, j, i);
        continue;
        Fragment localFragment1 = localOp.fragment;
        localFragment1.mNextAnim = k;
        this.mManager.attachFragment(localFragment1, j, i);
      }
      label714: this.mManager.moveToState(this.mManager.mCurState, j, i, true);
      if (this.mAddToBackStack)
        this.mManager.addBackStackState(this);
      return;
    }
  }

  public final FragmentTransaction setBreadCrumbShortTitle(int paramInt)
  {
    this.mBreadCrumbShortTitleRes = paramInt;
    this.mBreadCrumbShortTitleText = null;
    return this;
  }

  public final FragmentTransaction setBreadCrumbShortTitle(CharSequence paramCharSequence)
  {
    this.mBreadCrumbShortTitleRes = 0;
    this.mBreadCrumbShortTitleText = paramCharSequence;
    return this;
  }

  public final FragmentTransaction setBreadCrumbTitle(int paramInt)
  {
    this.mBreadCrumbTitleRes = paramInt;
    this.mBreadCrumbTitleText = null;
    return this;
  }

  public final FragmentTransaction setBreadCrumbTitle(CharSequence paramCharSequence)
  {
    this.mBreadCrumbTitleRes = 0;
    this.mBreadCrumbTitleText = paramCharSequence;
    return this;
  }

  public final FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2)
  {
    return setCustomAnimations(paramInt1, paramInt2, 0, 0);
  }

  public final FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mEnterAnim = paramInt1;
    this.mExitAnim = paramInt2;
    this.mPopEnterAnim = paramInt3;
    this.mPopExitAnim = paramInt4;
    return this;
  }

  public final FragmentTransaction setTransition(int paramInt)
  {
    this.mTransition = paramInt;
    return this;
  }

  public final FragmentTransaction setTransitionStyle(int paramInt)
  {
    this.mTransitionStyle = paramInt;
    return this;
  }

  public final FragmentTransaction show(Fragment paramFragment)
  {
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    localOp.cmd = 5;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.mIndex);
    }
    if (this.mName != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mName);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackRecord
 * JD-Core Version:    0.6.0
 */